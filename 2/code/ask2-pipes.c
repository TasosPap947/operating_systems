#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#include "proc-common.h"
#include "tree.h"

#define SLEEP_PROC_SEC 3
#define SLEEP_TREE_SEC 1

void fork_procs(struct tree_node *root, int target)
{
  int dummy = 0;  /*
               * Absorbs write & read results (for no warnings)
               * REMOVE AFTER DEBUG
               */
  dummy = dummy + 1;
  pid_t p[2];
  int fd[2][2];
  change_pname(root->name);

    if (root->children == NULL) {
      int nm = atoi(root->name);
      int wcnt = write(target, &nm, sizeof(nm));
      if (wcnt != sizeof(nm)) {
        perror("write to pipe");
        exit(1);
      }
      printf("Leaf sleeping\n");
      sleep(SLEEP_PROC_SEC);
      exit(0);
    }

    for (int i = 0; i < root->nr_children; ++i) {
      if (pipe(fd[i])) {
        perror("pipe");
        exit(1);
      }
      p[i] = fork();
      if (p[i] < 0) {
        perror("fork");
        exit(1);
      }
      if (p[i] == 0) {
        fork_procs(root->children+i, fd[i][1]);
      }
    }

    for (int i = 0; i < root->nr_children; ++i) {
      printf("Waiting for children\n");
      wait(NULL); // remove when finished to see if it is needed.
    }

    int num1;
    int num2;
    dummy = read(fd[0][0], &num1, sizeof(num1));
    dummy = read(fd[1][0], &num2, sizeof(num2));

    int result;

    switch(root->name[0]) {
      case '+':
        result = num1 + num2;
        break;
      case '*':
        result = num1 * num2;
        break;
    }

    dummy = write(target, &result, sizeof(result)); // check for errors
    printf("Closing father procedure\n");
    exit(0);
}

/*
 * The initial process forks the root of the process tree,
 * waits for the process tree to be completely created,
 * then takes a photo of it using show_pstree().
 *
 * How to wait for the process tree to be ready?
 * In ask2-{fork, tree}:
 *      wait for a few seconds, hope for the best.
 * In ask2-signals:
 *      use wait_for_ready_children() to wait until
 *      the first process raises SIGSTOP.
 */
int main(int argc, char **argv)
{
	pid_t pid;
	int status;
  struct tree_node *root;


  int fd[2];
  int result;

  if (argc != 2) {
		fprintf(stderr, "Usage: %s <input_tree_file>\n\n", argv[0]);
		exit(1);
	}

  root = get_tree_from_file(argv[1]);

  if (pipe(fd) < 0) {
    perror("pipe");
    exit(1);
  }
  pid = fork();
	if (pid < 0) {
		perror("main: fork");
		exit(1);
	}
	if (pid == 0) {
    close(fd[0]);
		fork_procs(root, fd[1]);
		exit(1);
	}

  sleep(SLEEP_TREE_SEC);
  show_pstree(pid);

  close(fd[1]);

   if (read(fd[0], &result, sizeof(result)) != sizeof(result)) {
     perror("read from pipe");
     exit(1);
   }

   printf("result = %d\n", result);
	/* Print the process tree root at pid */



	/* Wait for the root of the process tree to terminate */
	pid = wait(&status);
	explain_wait_status(pid, status);

	return 0;
}
