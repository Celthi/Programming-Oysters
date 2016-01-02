#include <stdio.h>

int main(void)
{
	double sum, v;
	sum = 0;
	while (scanf("%1lf", &v) == 1)
		printf("\t%.2lf\n", sum += v);
	return 0;
}
