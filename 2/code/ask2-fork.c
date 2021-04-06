#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "proc-common.h"

#define SLEEP_PROC_SEC 5
#define SLEEP_TREE_SEC 2

/*
 * Create this process tree:
 * A-+-B---D
 *   `-C
 */
void fork_procs(void)
{
	/*
	 * initial process is A.
	 */

	change_pname("A");

	pid_t a,b,c,d;
	int status;
	printf("A, pid = %ld: Creating B...\n", (long)getpid());
	b = fork();
	if (b < 0) {
		perror("fork");
	}
	if (b == 0) {
		change_pname("B");
		printf("B, pid = %ld: Creating D...\n", (long)getpid());
		d = fork();
		if (d < 0) {
			perror("fork");
		}
		if (d == 0) {
			change_pname("D");
			printf("D, pid = %ld: Sleeping...\n", (long)getpid());
			sleep(SLEEP_PROC_SEC);
			printf("D, pid = %ld: Exiting...\n", (long)getpid());
			exit(13);
		}
		printf("B, pid = %ld: Waiting...\n", (long)getpid());
		b = wait(&status);
		explain_wait_status(b,status);
		printf("B, pid = %ld: Exiting...\n", (long)getpid());
		exit(19);
	}
	printf("A, pid = %ld: Creating C...\n", (long)getpid());
	c = fork();
	if (c < 0) {
		perror("fork");
	}
	if (c == 0) {
		change_pname("C");
		printf("C, pid = %ld: Sleeping...\n", (long)getpid());
		sleep(SLEEP_PROC_SEC);
		printf("C, pid = %ld: Exiting...\n", (long)getpid());
		exit(17);
	}

	/* ... */
	printf("A, pid = %ld: Waiting...\n", (long)getpid());
	for (int i = 0; i < 2; ++i) {
		a = wait(&status);
		explain_wait_status(a,status);
	}
	
	printf("A, pid = %ld: Exiting...\n", (long)getpid());
	exit(16);
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
int main(void)
{
	pid_t pid;
	int status;

	/* Fork root of process tree */
	pid = fork();
	if (pid < 0) {
		perror("main: fork");
		exit(1);
	}
	if (pid == 0) {
		/* Child */
		fork_procs();
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
