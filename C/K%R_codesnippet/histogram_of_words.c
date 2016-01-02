#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define IN 1
#define OUT 0


int main()
{
	int c, ny, nw;


#define DEBUG 1
#ifdef DEBUG
#define DEF_MODE S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH
	int fd;
	fd = open("./histogram_of_words.c", O_RDONLY, 0);
	dup2(fd, STDIN_FILENO);
	dint fdout;
	fdout = open("./output.txt",O_RDWR|O_CREAT, DEF_MODE);
	dup2(fdout, STDOUT_FILENO);
#endif
	ny = 1;
	nw = 0;
	while ( (c = getchar()) != EOF) {
		if (c == ' ' || c == '\n' || c == '\t') {
			if (nw > 0) {
				printf("%4d", ny);
				while (nw--)
					putchar('-');
				putchar('\n');
				nw = 0;
				ny++;
			}
		}
		else nw++;
	}
	return 0;

} 
