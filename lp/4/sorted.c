#include <stddef.h>

void sorted(int* array, size_t size) {
	int min, temp;
	for (int i = 0; i < size; i++) {
		min = i;
		for (int k = i + 1; k < size; k++)
			if (array[k] < array[min])
				min = k;
		temp = array[i];
		array[i] = array[min];
		array[min] = temp;
	}
}