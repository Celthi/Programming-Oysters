#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

#define MAXLINE 1000

/* reverse a line, discard empty lines */

void reverse(char *s);
int my_getline(char s[], int max);

int main(void)
{
#define DEBUG 1
#ifdef DEBUG
#define DEF_MODE S_IRUSR|S_IWUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH
	int fd;
	fd = open("./reverse_input.txt", O_RDONLY, 0);
	dup2(fd, STDIN_FILENO);
	int fdout;
	fdout = open("./reverse_output.txt",O_RDWR|O_CREAT, DEF_MODE);
	dup2(fdout, STDOUT_FILENO);
#endif
	int len, i;
	char line[MAXLINE], longest[MAXLINE];

	while ((len = my_getline(line, MAXLINE)) != 0) {
		if (len > 1) {
			reverse(line);
			printf("%s\n", line);
		}
	}

	return 0;
}

int my_getline(char s[], int max) 
{
	int i, c;
	for (i=0; i<max-1 && (c=getchar())!=EOF && c!='\n'; ++i) {
		s[i] = c;
	}
	if (c == '\n') {
		s[i] = c;
		++i;
	}
	s[i] = '\0';
	return i;
}   
void reverse(char *s)
{
	int len = strlen(s);
	//printf("%d", len);
	int i = 0;
	char temp;
	while (--len>i) {
		temp = *(s + i);
		*(s + i) = *(s + len);
		*(s + len) = temp;
		i++;
	}
	i++;
	*(s + len + i) = '\0';
	//	printf("%s", s);
}                 
