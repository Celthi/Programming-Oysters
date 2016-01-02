#include <stdio.h>
#include <stdlib.h>

#define R 3
#define C 4
#define MAXLENGTH 200
#define SIZE 100

int mygetline(char *s, int max);

int main(void)
{
	int a[R][C];
	char s[SIZE];
	int test[R][C] = {100, 1, 2, 3, 
					  5,  6, 7, 8,
					  4, 3, 4, 2};

	//mygetline(s,MAXLENGTH); 
	//printf("%s\n", s);
	int temp = 0;

	int i,j;
	i = j = 0;

	int data = 0;
	char stemp[10];
	while (i < R && j < C) {
		data = scanf("%d", &temp);
		//printf("%d\n", data);
		while (data) {
			a[i][j++] = temp;
			data = scanf("%d", &temp);
		//printf("%d\n", data);
		}
		i++;
		j = 0;
		/* when scanf fail, input stream will stop at the failed positon*
		 *so scanf the failed ';' to stemp, and move to the next integer*/
		scanf("%s", stemp);
	}
	i = j = 0;
	int *aa = (int *)a;
	i = 0;
	while(i < R * C)
		printf("%d ", *(aa + i++));
	printf("\n");
	aa = (int *)test;
	i = 0;
	while(i < R * C)
		printf("%d ", *(aa + i++));
}

int mygetline(char *s, int max)
{
	char c;
	while ((c = getchar()) != EOF && c != '\n' && max--) {
		*s++ = c;
	}
	if (c == '\n')
		*s++ = c;
	*s = '\0';
	return 1;
}
