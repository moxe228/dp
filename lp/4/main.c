#include <stdio.h>
#include "sorted.h"


#define size 7
int main(void) {
	int array[size];
	for (int i = 0; i < size; i++)
		scanf("%i", array[i]);
	sorted(array, size);
	for (int i = 0; i < size; i++)
		printf("%i ", &array[i]);
	return 0;
}