#include <stdio.h>

int main(void)
{
	struct {
		unsigned int is_keyword : 11;
		unsigned int : 0;
		unsigned int is_static  : 1;
	} flags;
	printf("%d\n", sizeof(flags));
	return 0;
}
