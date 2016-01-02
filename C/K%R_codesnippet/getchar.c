#include <stdio.h>

int main()
{
    int c,b;
	c = getchar();
	while (c != EOF){
		putchar(c);
		//printf("%d",c);
	   // b = (int) c;
		//printf("\n%d",b);
		c = getchar();
	}
	return 0;
}
