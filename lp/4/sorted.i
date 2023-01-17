# 1 "4\\sorted.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "4\\sorted.c"
# 1 "4\\sorted.h" 1
# 1 "c:\\riscv64-unknown-elf\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 1 3 4
# 143 "c:\\riscv64-unknown-elf\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4

# 143 "c:\\riscv64-unknown-elf\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "c:\\riscv64-unknown-elf\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 321 "c:\\riscv64-unknown-elf\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 415 "c:\\riscv64-unknown-elf\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 426 "c:\\riscv64-unknown-elf\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
} max_align_t;
# 2 "4\\sorted.h" 2




# 5 "4\\sorted.h"
extern void sorted (int *array, size_t size);
# 2 "4\\sorted.c" 2
# 1 "c:\\riscv64-unknown-elf\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 1 3 4
# 3 "4\\sorted.c" 2

void sorted(int *array, size_t size){
 int min, temp;
 for(int i =0; i < size; i++){
  min = i;
  for (int k = i + 1; k < size; k++)
   if(array[k] < array[min])
    min = k;
  temp = array[i];
  array[i] = array[min];
  array[min] = temp;
 }
}
