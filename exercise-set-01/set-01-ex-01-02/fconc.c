#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

void doWrite(int fd, const char *buff, int len, const char *outname) {
	// Συνάρτηση που αναλαμβάνει την εγγραφή στον περιγραφητή αρχείου fd.
	ssize_t wcnt;
	int idx = 0;
	do {
		wcnt = write(fd, buff + idx,len - idx);
		if (wcnt == -1) {
			perror(outname);
			exit(1);
		}
		idx += wcnt;
	} while(idx < len);
}


void write_file(int fd, const char *infile, const char *outname) {
	// Συνάρτηση που γράφει τα περιεχόμενα του αρχείου με όνομα infile στον περιγραφητή
	// αρχείου fd. Χρησιμοποιεί την doWrite().

	// open file for reading
	int	fd_read = open(infile, O_RDONLY);

	if (fd_read == -1) {
		perror(infile);
		exit(1);
	}

	char buff[1024];
	ssize_t rcnt;

	for (;;) {
		rcnt = read(fd_read, buff, sizeof(buff));
		if (rcnt == 0) break;
		if (rcnt == -1) {
			perror(infile);
			exit(1);
		}
		doWrite(fd, buff, rcnt, outname);
	}
	close(fd_read);
}

int main(int argc, char **argv) {
	// if wrong number of arguments, print appropriate message
	if (argc < 3 || argc > 4) {
		fprintf(stderr, "Usage: ./fconc infile1 infile2 [outfile (default:fconc.out)]\n");
		exit(1);
	}

	// default output name: fconc.out
	char *outname = (argc == 3) ? "fconc.out" : argv[3];

	// open file for writing
	int oflags = O_CREAT | O_WRONLY | O_TRUNC;
	int mode = S_IRUSR | S_IWUSR;
	int fd_write = open(outname, oflags, mode);
	if (fd_write == -1) {
		perror(outname);
		exit(1);
	}

	// write files 1 and 2 back to back
	write_file(fd_write, argv[1], outname);
	write_file(fd_write, argv[2], outname);

	close(fd_write);

	return 0;
}
