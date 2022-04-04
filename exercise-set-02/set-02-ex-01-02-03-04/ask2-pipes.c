#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#include "proc-common.h"
#include "tree.h"

#define SLEEP_PROC_SEC 2
#define SLEEP_TREE_SEC 1

void fork_procs(struct tree_node *root, int target)
{
	pid_t p[2];
	int wcnt, rcnt;
	change_pname(root->name); /* needed for show_pstree */

	/* Leaf nodes */
	if (root->children == NULL) {
		int number = atoi(root->name); /* ascii-to-integer: convert root->name to int */
		wcnt = write(target, &number, sizeof(number));
		if (wcnt != sizeof(number)) {
			perror("write to pipe");
			exit(1);
		}
		sleep(SLEEP_PROC_SEC); /* sleep in order to show_pstree */
		exit(0);
	}

	int fd[2][2]; /* 2 pipes, one for each child */

	for (int i = 0; i < root->nr_children; ++i) {
		if (pipe(fd[i]) < 0) {
			perror("pipe");
			exit(1);
		}
		p[i] = fork();
		if (p[i] < 0) {
			perror("fork");
			exit(1);
		}
		if (p[i] == 0) {
			close(fd[i][0]);			  /* close read end */
			fork_procs(root->children + i, fd[i][1]); /* fd[i][1] is the target node */
		}
		close(fd[i][1]); /* close write end */
	}

	pid_t pid;
	int status;

	for (int i = 0; i < root->nr_children; ++i) {
		pid = wait(&status);
		explain_wait_status(pid, status);
	}

	int num1, num2;

	rcnt = read(fd[0][0], &num1, sizeof(num1));
	if (rcnt != sizeof(num1)) {
		perror("read from pipe");
		exit(1);
	}

	rcnt = read(fd[1][0], &num2, sizeof(num2));
	if (rcnt != sizeof(num2)) {
		perror("read from pipe");
		exit(1);
	}

	int result;

	switch (root->name[0]) {
		case '+':
			result = num1 + num2;
			break;
		case '*':
			result = num1 * num2;
			break;
	}

	wcnt = write(target, &result, sizeof(result));
	if (wcnt != sizeof(result)) {
		perror("write to pipe");
		exit(1);
	}

	printf("Result of %d %c %d is %d\n", num1, root->name[0], num2, result);
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

	if (argc < 2) {
		fprintf(stderr, "Usage: %s <input_tree_file>\n\n", argv[0]);
		exit(1);
	}

	root = get_tree_from_file(argv[1]);

	if (pipe(fd) < 0) {
		perror("pipe");
		exit(1);
	}

	pid = fork(); /* Create root of process tree */
	if (pid < 0) {
		perror("main: fork");
		exit(1);
	}
	if (pid == 0) {
		close(fd[0]); /* close read end */
		fork_procs(root, fd[1]);
		exit(1);
	}

	sleep(SLEEP_TREE_SEC);
	show_pstree(pid);

	close(fd[1]); /* close write end */

	if (read(fd[0], &result, sizeof(result)) != sizeof(result)) {
		perror("read from pipe");
		exit(1);
	}

	/* Wait for the root of the process tree to terminate */
	pid = wait(&status);
	explain_wait_status(pid, status);

	printf("result = %d\n", result);
	return 0;
}
