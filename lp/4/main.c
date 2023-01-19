#include <stdio.h>

int main()
{
	unsigned const array[4] = { 4, 3, 2, 1 };
	size_t arraySize = sizeof(array) / sizeof(array[0]);
	sorted(array, arraySize);
	for (int i = 0; i < arraySize; i++)
		printf("%d ", array[i]);
	return 0;
}
