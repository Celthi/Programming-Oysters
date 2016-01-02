#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
	int c = 3;
	int *b[] = {&c};
	*argv++;
	int *a[3] = {&c, &c, &c};
	int **array_d = a;
	array_d++;
	a++;
	sizeof(int);
	sizeof(b);
	printf("size of int %d, size of b %d\n", sizeof(a), sizeof(argv));
	printf("address of argv %p, address of &argv %p, address of *argv %p\n", argv, &argv,*argv);
	char *str[10] = {"we", "are", "good\n"};
	argv = str;
	printf("address of str %p, address of &str %p, address of *str %p\n", str, &str,*str);
	printf("address of argv %p, address of &argv %p, address of *argv %p\n", argv, &argv,*argv);
	printf("print e--%c, print g--%c\n", *(*str +1), *(*(str+2) + 0));
	printf("print e--%c, print g--%c\n", *(*argv +1), *(*(argv+2) + 0));
	printf("print sizeof str--%d, print size of argv--%d\n", sizeof(str),sizeof(argv));
	//argv = &str;
	return 0;
}
