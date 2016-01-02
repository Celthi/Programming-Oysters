#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <stdlib.h>

void reverse(char *s);
void itoa(int n, char s[]);
int main(int argc, char *argv[])
{
	char s[40];
	//int i = 1 << 31;
	int n;
	n = 0x80000000;
	printf("##%d\n", -n);
	itoa(n,s);
	
	return 0;
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
void itoa(int n, char s[])
{
	
	printf("%d\n", n);
	int i;
	//i = -(0x7fffffff) - 1 ;
	int sign;
	if ((sign = n) < 0)
		n = -n;
	printf("--%d\n", n);
	i = 0;
	do {
		printf("==%d\n", n/10);
		s[i++] = abs(n % 10) + '0';
	} while ((n /= 10));
	if (sign < 0)
		s[i++] = '-';
	s[i] = '\0';
	//i = 0 - i;
	reverse(s);
	printf("%d\n", n);
	printf("%d\n", -n);
	printf("%d\n", sizeof(int)); 
	printf("%s\n", s);
}

