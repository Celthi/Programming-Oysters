#include <stdio.h>
#include <stdlib.h>

#define MAXLINE 100

/* rudimentary calculator */

int my_getline(char line[], int max);
int main(int argc, char *argv[])
{
	double sum, my_atof(char []);
	char line[MAXLINE];
	
	sum = 0;
	while (my_getline(line, MAXLINE) > 0)
		printf("\%g\n", sum += my_atof(line));
	return 0;


}


/* getline: get lin into s, return length */
int my_getline(char s[], int lim)
{
	int c, i;

	i = 0;
	while (--lim > 0 && (c = getchar()) != EOF && c != '\n')
		s[i++] = c;
	if (c == '\n')
		s[i++] = c;
	s[i] = '\0';
	return i;
}
