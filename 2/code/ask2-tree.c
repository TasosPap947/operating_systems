#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "proc-common.h"
#include "tree.h"

#define SLEEP_PROC_SEC 2
#define SLEEP_TREE_SEC 1

/*
 * Create this process tree:
 * A-+-B---D
 *   `-C
 */

void fork_procs(struct tree_node *node)
{
  int status;
  pid_t p;

  change_pname(node->name);

  for (int i = 0; i < node->nr_children; ++i) {
    printf("%s: Creating %s...\n",node->name,node->children[i].name);
    p = fork();
    if (p < 0) {
      perror("fork");
      exit(1);
    }
    if (p == 0) {
      fork_procs(node->children+i);
    }
  }

  for (int i = 0; i < node->nr_children; ++i) {
    p = wait(&status);
    explain_wait_status(p,status);
  }

  if (node->children == NULL) {
    sleep(SLEEP_PROC_SEC);
  }
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

  if (argc != 2) {
		fprintf(stderr, "Usage: %s <input_tree_file>\n\n", argv[0]);
		exit(1);
	}

  root = get_tree_from_file(argv[1]);

	/* Fork root of process tree */
	pid = fork();
	if (pid < 0) {
		perror("main: fork");
		exit(1);
	}
	if (pid == 0) {
		/* Child */
		fork_procs(root);
		exit(1);
	}

	/*
	 * Father
	 */
	/* for ask2-signals */
	/* wait_for_ready_children(1); */

	/* for ask2-{fork, tree} */
	sleep(SLEEP_TREE_SEC);

	/* Print the process tree root at pid */
	show_pstree(pid);

	/* for ask2-signals */
	/* kill(pid, SIGCONT); */

	/* Wait for the root of the process tree to terminate */
	pid = wait(&status);
	explain_wait_status(pid, status);

	return 0;
}
