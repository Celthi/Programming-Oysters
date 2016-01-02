#include <stdio.h>
fac_tail(int n, int *re)
{
	if (n <= 1) return *re;
	else
	{
		*re *= n;
		fac_tail(n-1, re);
	}

}
int main(void)
{
	int i = 6;
	int result = 1;
	fac_tail(6, &result);
	printf("%d\n", result);
	return 0;

}
