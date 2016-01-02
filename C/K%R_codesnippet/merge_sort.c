#include <stdio.h>
#include <stdlib.h>

void merge_sort(int data[], int first, int last);
void merge(int data[], int first, int part, int last);
int main(int argc, const char *argv[])
{
    int input[] = { 1, 4, 3};//3, 4, 32, 11, 22, 24};

    merge_sort(input, 0, 2);

    int k = 0;
    int num = 2;
    for ( ; k <= num; k++) {
        printf("%d\t", input[k]);
    }
    printf("\n");

    return 0;
}


void merge_sort(int data[], int first, int last)
{
    int part = (first + last) / 2;
    if ( first == last) 
        return;
    merge_sort(data, first, part) ;
    merge_sort(data, part + 1, last);
    merge(data, first, part, last);
	int k = 0;
	for (k=0; k <= last; k++) {
		printf("%d\t", data[k]);
	}
	printf("==============");

}
void merge(int data[], int first, int part, int last)
{
    int i, j;
    int *out;
    out = (int *)malloc((last - first + 1) * sizeof(int));
    int k;
    for(k = 0, i = first, j = part + 1; i <= part  && j <= last; ){
        if (data[i] > data[j])
        {
            out[k++] = data[j];
            j++;
        } else {
            out[k++] = data[i];
            i++;
        }
    }
	//printf("%d---\n", data[i]);
    while ( i <= part){
        out[k++] = data[i++];
    }
    while ( j <= last) {
        out[k++] = data[j++];
    }
	i = first;
    for (k = 0; k <= (last - first); k++) {
	   printf("%d\t", out[k]);
        data[i++] = out[k];
    }
	printf("\n");

}
