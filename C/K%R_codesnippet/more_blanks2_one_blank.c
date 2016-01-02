#include <stdio.h>

int main(int argc, char *argv[])
{
	int c;
	c = getchar();
	while (c  != EOF)
	{
		if (c != ' ')
			putchar(c);
		else {
        	putchar(c);
			while ((c = getchar()) == ' ')
			;
			putchar(c);
		}
		c = getchar();

	}
	return 0;
}
