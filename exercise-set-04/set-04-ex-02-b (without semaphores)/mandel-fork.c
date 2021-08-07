/*
 * mandel.c
 *
 * A program to draw the Mandelbrot Set on a 256-color xterm.
 *
 */

#include <stdio.h>
#include <unistd.h>
#include <assert.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <semaphore.h>
#include <sys/types.h>
#include <sys/wait.h>
/*TODO header file for m(un)map*/

#include <sys/mman.h>

#include "mandel-lib.h"

#define MANDEL_MAX_ITERATION 100000


int NPROCS;
sem_t *sem;



/***************************
 * Compile-time parameters *
 ***************************/

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
void write_mandel_line(int *buffer, int color_val[], int i)
{
	int j;
	for (j = 0; j < x_chars; ++j) {
		buffer[x_chars*i + j] = color_val[j]; 	
	}
}

void compute_and_write_mandel_line(int *buffer, int proc_n)
{
	/*
	 * A temporary array, used to hold color values for the line being drawn
	 */
	
	int color_val[x_chars];

	int i;
	for (i = proc_n; i < y_chars; i += NPROCS) {
		compute_mandel_line(i, color_val);
		write_mandel_line(buffer, color_val, i);
	}
}


/*
 * Create a shared memory area, usable by all descendants of the calling
 * process.
 */
void * create_shared_memory_area(unsigned int numbytes)
{
	int pages;
	void *addr;

	if (numbytes == 0) {
		fprintf(stderr, "%s: internal error: called for numbytes == 0\n", __func__);
		exit(1);
	}

	/*
	 * Determine the number of pages needed, round up the requested number of
	 * pages
	 */
	pages = (numbytes - 1) / sysconf(_SC_PAGE_SIZE) + 1;

	/* Create a shared, anonymous mapping for this number of pages */
	/* TODO:  
		addr = mmap(...)
	*/

	addr = mmap(NULL, pages * sysconf(_SC_PAGE_SIZE), PROT_WRITE | PROT_READ, MAP_ANONYMOUS | MAP_SHARED, -1, 0);

	return addr;
}

void destroy_shared_memory_area(void *addr, unsigned int numbytes) {
	int pages;

	if (numbytes == 0) {
		fprintf(stderr, "%s: internal error: called for numbytes == 0\n", __func__);
		exit(1);
	}

	/*
	 * Determine the number of pages needed, round up the requested number of
	 * pages
	 */
	pages = (numbytes - 1) / sysconf(_SC_PAGE_SIZE) + 1;

	if (munmap(addr, pages * sysconf(_SC_PAGE_SIZE)) == -1) {
		perror("destroy_shared_memory_area: munmap failed");
		exit(1);
	}
}


int main(int argc, char **argv)
{

	if (argc < 2) {
		printf("Usage: ./mandel N\n\n");	
		exit(1);
	}

	int p;

	NPROCS = atoi(argv[1]);


	int proc_n;
	int *buff = create_shared_memory_area(4*x_chars*y_chars);

	xstep = (xmax - xmin) / x_chars;
	ystep = (ymax - ymin) / y_chars;

	for (proc_n = 0; proc_n < NPROCS; proc_n++) {
		p = fork();
		if (p < 0) {
			perror("fork");
			exit(1);
		}
		if (p == 0) {
			compute_and_write_mandel_line(buff, proc_n);
			destroy_shared_memory_area(buff, 4*x_chars*y_chars);
			exit(0);
		}
	}

	for (proc_n = 0; proc_n < NPROCS; proc_n++) {
		wait(NULL);	
	}
	
	int i, j;

	for (i = 0; i < y_chars; ++i) {
		for (j = 0; j < x_chars; ++j) {
			set_xterm_color(1, buff[x_chars*i+j]);
			//printf("@");
			//fflush(stdout);
			char *c = "@";
			write(1, c, 1);
		}	
		printf("\n");
	}
	


	/*
	 * draw the Mandelbrot Set, one line at a time.
	 * Output is sent to file descriptor '1', i.e., standard output.
	 */
	
	/*for (line = 0; line < y_chars; line++) {
		compute_and_output_mandel_line(1, line);
	}*/

	reset_xterm_color(1);
	
	destroy_shared_memory_area(buff, 4*x_chars*y_chars);

	return 0;
}
