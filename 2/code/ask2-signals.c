#ifndef _XOPEN_SOURCE
#define _XOPEN_SOURCE
#endif

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <sys/types.h>
#include <signal.h>
#include <sys/wait.h>

#include "tree.h"
#include "proc-common.h"

void fork_procs(struct tree_node *root)
{
	/*
	 * Start
	 */

	change_pname(root->name);
	printf("PID = %ld, name %s, starting...\n",	(long)getpid(), root->name);

	/* Check for leaves */
	if (root->nr_children == 0) {
		raise(SIGSTOP);
		/* After receiving signal from father: */
		printf("PID = %ld, name = %s is awake\n", (long)getpid(), root->name);
		exit(0);
	}

	pid_t p[root->nr_children];
	int status;

	/*
	 * Create children
	 */

  for (int i = 0; i < root->nr_children; ++i) {
    p[i] = fork();
    if (p[i] < 0) {
      perror("fork");
      exit(1);
    }
    if (p[i] == 0) {
      fork_procs(root->children+i);
    }
  }

	/*
	 * Wait for all children to suspend
	 */
	wait_for_ready_children(root->nr_children);

	/*
	 * After all children have suspended, suspend self
	 */
	raise(SIGSTOP);
	/* After receiving signal from father: */
	printf("PID = %ld, name = %s is awake\n", (long)getpid(), root->name);

	/*
	 * Activate children
	 */
	for (int i = 0; i < root->nr_children; ++i) {
		kill(p[i], SIGCONT); /* Wake children one at a time to ensure DFS */
		p[i] = wait(&status);
		explain_wait_status(p[i], status);
	}

	/*
	 * Exit
	 */
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

	if (argc < 2){
		fprintf(stderr, "Usage: %s <tree_file>\n\n", argv[0]);
		exit(1);
	}

	/* Read tree into memory */
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

	wait_for_ready_children(1); /* Wait for children to suspend */

	/* Print the process tree root at pid */
	show_pstree(pid);

	/* for ask2-signals */
	kill(pid, SIGCONT);

	/* Wait for the root of the process tree to terminate */
	wait(&status);
	explain_wait_status(pid, status);

	return 0;
}
