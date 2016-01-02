#include <stdio.h>

#define LENGTH

void my_strcat(char *s, char *t);

int main(int argc, char *argv[])
{
	char s[100] = "";
	char t[10] = "good";
	my_strcat(s, t);
	printf("%s\n", s);
	

	return 0;

}

void my_strcat(char *s, char *t)
{
	while (*s++)
		;
	s--;
	while (*s++ = *t++)
		;
}
