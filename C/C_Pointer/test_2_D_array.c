#include<stdio.h>
int main()
{
	int x[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	int y[2][5] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}; 
	printf("y == %d\n", **y);
	printf("&y[1] == %p\n", &y[1]);
	printf("y[1][0] == %d\n",*y[1]);
	printf("y[0] == %p\n", y[0]);
	printf("&y[0][0] == %p\n", &y[0][0]);
	printf("y[1][3] == %d\n", y[1][3]);
	printf("y[1][3] == %p\n", &y[1][3]);
	//this operator need to repair.
	int *p;
	p = *y;
	int *py;
	py = y;
    printf("array can access by [] ,y[1][3] == %d\n", *(*y+8));
    printf("array can access by [] ,y[1][3] == %d\n", *(*(y+1)+3));
    printf("int *p=*y, so *(p +8 ) is y[1][3] == %d\n", *(p + 8));
    printf("int *p=y, so *(p + 8) is y[1][3] == %d\n", *(py+8));
	//
	return 0;
}

