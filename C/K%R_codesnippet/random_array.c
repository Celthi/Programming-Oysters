#include<stdio.h>
#include<math.h>
#include<time.h>

int not_in_array(int num, int a[], int s);

int main(int argc, const char *argv[])
{
	int array[10];
	int i = 0;
    int num;
	srand(time(NULL));
	array[0] = rand()%9 + 1;
	i = 1;
	while (i < 10) {
		num = rand()%10 + 1;
		if (not_in_array(num, array, i)) {
			array[i] = num;
			i++;
			srand(time(NULL));
		}
	}
	for (i = 0; i < 10; i++)
		printf("%d\t", array[i]);
	printf("\n");
	return 0;
}


int not_in_array(int num, int a[], int s) 
{
	int i;
	for (i = 0; i < s; i++) {
       if(a[i] == num)
		   return 0;
	}
	if (i == s)
		return 1;
}

