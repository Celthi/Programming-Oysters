#include <stdio.h>
#include <string.h>

#define MAXLEN 100

void reverse(char s[]);

int main()
{
	char s[MAXLEN] = "aefasdfasdfad \n dfaefa12 343";
	//scanf("%s", s);
	reverse(s);
	printf("%s", s);

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
