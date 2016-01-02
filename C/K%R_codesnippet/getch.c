#include <stdlib.h>
#define BUFSIZE 100

static int buf[BUFSIZE];
static int bufp = 0;
int getch(void)
{
	return bufp > 0 ? buf[--bufp] : getchar();
	
}

void ungetch(int c)
{
	buf[bufp++] = c;
}

