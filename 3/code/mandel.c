/*
 * mandel.c
 *
 * A program to draw the Mandelbrot Set on a 256-color xterm.
 *
 */

#include <errno.h>
#include <stdio.h>
#include <unistd.h>
#include <assert.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <semaphore.h>
#include <pthread.h>
#include <signal.h>
#include "mandel-lib.h"

#define perror_pthread(ret, msg) \
	do { errno = ret; perror(msg); } while (0)

#define MANDEL_MAX_ITERATION 100000

int NTHREADS;
sem_t *sem;

typedef struct {
	int first;
	int second;
} arg_struct;

/***************************
 * Compile-time parameters *
 ***************************/

// struct thread_info_struct {
// 	pthread_t tid; /* POSIX thread id, as returned by the library */
//
// 	int thrid; /* Application-defined thread id */
// 	int thrcnt;
// };
// ???

/*
 * Output at the terminal is is x_chars wide by y_chars long
*/
int y_chars = 50;
int x_chars = 90;

/*
 * The part of the complex plane to be drawn:
 * upper left corner is (xmin, ymax), lower right corner is (xmax, ymin)
*/
double xmin = -1.8, xmax = 1.0;
double ymin = -1.0, ymax = 1.0;

/*
 * Every character in the final output is
 * xstep x ystep units wide on the complex plane.
 */
double xstep;
double ystep;

/*
 * This function computes a line of output
 * as an array of x_char color values.
 */
void compute_mandel_line(int line, int color_val[])
{
	/*
	 * x and y traverse the complex plane.
	 */
	double x, y;

	int n;
	int val;

	/* Find out the y value corresponding to this line */
	y = ymax - ystep * line;

	/* and iterate for all points on this line */
	for (x = xmin, n = 0; n < x_chars; x+= xstep, n++) {

		/* Compute the point's color value */
		val = mandel_iterations_at_point(x, y, MANDEL_MAX_ITERATION);
		if (val > 255)
			val = 255;

		/* And store it in the color_val[] array */
		val = xterm_color(val);
		color_val[n] = val;
	}
}

/*
 * This function outputs an array of x_char color values
 * to a 256-color xterm.
 */
void output_mandel_line(int fd, int color_val[])
{
	int i;

	char point ='@';
	char newline='\n';

	for (i = 0; i < x_chars; i++) {
		/* Set the current color, then output the point */
		set_xterm_color(fd, color_val[i]);
		if (write(fd, &point, 1) != 1) {
			perror("compute_and_output_mandel_line: write point");
			exit(1);
		}
		// reset_xterm_color(1);
	}

	/* Now that the line is done, output a newline character */
	if (write(fd, &newline, 1) != 1) {
		perror("compute_and_output_mandel_line: write newline");
		exit(1);
	}
}



void compute_and_output_mandel_line(arg_struct *arg)
{
	int fd = arg->first;
	int thr_n = arg->second; // Starting line for each thread
	int color_val[x_chars];
	/*
	 * A temporary array, used to hold color values for the line being drawn
	 */
	int i;
	for (i = thr_n; i < y_chars; i += NTHREADS) {
		//printf("Thread %d, computing line %d\n", line, i);
		compute_mandel_line(i, color_val);

		sem_wait(&sem[(thr_n)%NTHREADS]);
		//printf("Thread %d, printing line %d\n", line, i);
		output_mandel_line(fd, color_val);
		sem_post(&sem[(thr_n+1)%NTHREADS]);
	}
}



void sig_handler() {
	reset_xterm_color(1);
	printf("\nYou'll never change the color!\n");
	exit(1);
}




int main(int argc, char **argv)
{
	int ret;
	//struct thread_info_struct *thr; // ???
	// signal(SIGINT,sig_handler);

	if (argc < 2)	{
		printf("Usage: ./mandel N");
		exit(1);
	}

	NTHREADS = atoi(argv[1]);
	//thr = malloc(NTHREADS * sizeof(*thr)); // ???
	sem = malloc(NTHREADS * sizeof(sem_t)); // Create semaphores

	int thr_n;

	pthread_t threads[NTHREADS];

	xstep = (xmax - xmin) / x_chars;
	ystep = (ymax - ymin) / y_chars;

	for (thr_n = 0; thr_n < NTHREADS; thr_n++) {
		sem_init(&sem[thr_n], 0, 0);
	}

	sem_post(&sem[0]);

	for (thr_n = 0; thr_n < NTHREADS; thr_n++) {
		arg_struct *arg = malloc(sizeof(arg_struct));
		arg->first = 1; // for stdout
		arg->second = thr_n;

		if (pthread_create(&threads[thr_n], NULL, compute_and_output_mandel_line, arg) != 0) {
			perror("Create thread:");
			exit(1);
		}
	}

	for (thr_n = 0; thr_n < NTHREADS; thr_n++) {
		ret = pthread_join(threads[thr_n], NULL);
		if (ret != 0) {
			perror_pthread(ret, "pthread_join");
			exit(1);
		}
	}

	/*
	 * draw the Mandelbrot Set, one line at a time.
	 * Output is sent to file descriptor '1', i.e., standard output.
	 */
	// for (line = 0; line < y_chars; line++) {
	// 	compute_and_output_mandel_line(1, line);
	// }

	reset_xterm_color(1);
	return 0;
}
