#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>

void doWrite(int fd, const char *buff, int len) {
	for (;;) {
		rcnt = read(fd1, buff, sizeof(buff)-1);
		if (rcnt == 0) break;
		if (rcnt == -1) {
			perror("read filename1");
			return 1;
		}
		buff[rcnt] = '\0';
		idx = 0;
		len = strlen(buff);
		do {
			wcnt = write(fd3, buff + idx,len - idx);
			if (wcnt == -1) {
				perror("write");
				return 1;
			}
			idx += wcnt;
		} while(idx < len);
		counter++;
	}
}

void write_file(int fd, const char *infile) {

}

int main(int argc, char **argv) {
	// if called with wrong number of arguments, print appropriate message
	if (argc < 3 || argc > 4) {
		printf("Usage: ./fconc infile1 infile2 [outfile (default:fconc.out)]\n");
		return 0;
	}

	// default name: fconc.out if not given
	char *outname = argc == 3 ? "fconc.out" : argv[3];

	int	fd1 = open(argv[1], O_RDONLY);

	if (fd1 == -1) {
		perror("open filename1");
		exit(1);
	}

	int fd2 = open(argv[2], O_RDONLY);

	if (fd2 == -1) {
		perror("open filename2");
		exit(1);
	}

	int oflags = O_CREAT | O_WRONLY | O_TRUNC;
	int mode = S_IRUSR | S_IWUSR;

	int fd3 = open(outname, oflags, mode);

	if (fd3 == -1) {
		perror("open outname");
		exit(1);
	}

	char buff[1024];
	ssize_t rcnt;
	size_t len, idx;
	ssize_t wcnt;

	for (;;) {
		rcnt = read(fd1, buff, sizeof(buff)-1);
		if (rcnt == 0) break;
		if (rcnt == -1) {
			perror("read filename1");
			return 1;
		}
		buff[rcnt] = '\0';
		idx = 0;
		len = strlen(buff);
		do {
			wcnt = write(fd3, buff + idx,len - idx);
			if (wcnt == -1) {
				perror("write");
				return 1;
			}
			idx += wcnt;
		} while(idx < len);
		counter++;
	}

	close(fd1);

	for (;;) {
		rcnt = read(fd2, buff, sizeof(buff)-1);
		if (rcnt == 0) break;
		if (rcnt == -1) {
			perror("read filename2");
			return 1;
		}
		buff[rcnt] = '\0';
		idx = 0;
		len = strlen(buff);
		do {
			wcnt = write(fd3, buff + idx,len - idx);
			if (wcnt == -1) {
				perror("write");
				return 1;
			}
			idx += wcnt;
			sleep(1);
		} while(idx < len);
	}

	close(fd2);

	return 0;
}
