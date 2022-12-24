.text
__start:
.globl __start
lw a2, array_lenght #Длина массива
li a3, 0           #i
li a4, 0            #j
la a5, array        #addr1 min
la a6, array        #addr2 least
la a7, array

loop_i:
bgeu a3, a2, loops_exit #if (a3>=a2) exit if (i>= arr_len)
addi a6, a5, 0 #a6 = a5 + 0
addi a3, a3, 1 #a3 = a3 + 1
addi a4, a3, 0 #a4 = a3 + 0
loop_j:  #j= min + 1
bgeu a4, a2, loop_j_exit #if (a4>=a2) exit
slli t1, a4, 2 #t1 = a4 << 2 = a4*4
addi a4, a4, 1 #a4 = a4 + 1
add t1, a7, t1 #t1 = a7 + t1
lw t2, 0(t1) #t2 = arr[j]
lw t3, 0(a6) #t3 = arr[least]
bgtu t2, t3, loop_j #arr[j] > arr[least]
addi a6, t1, 0
j loop_j

loop_j_exit:
lw t4, 0(a5)
lw t5, 0(a6)
sw t4, 0(a6) #least=min
sw t5, 0(a5) #min =least
addi a5, a5, 4
j loop_i

loops_exit:
li a0, 10 # x10 = 10
  ecall # ecall при значении x10 = 10 => останов симулятора

.rodata
array_lenght:
  .word 5
    
.data
array: 
  .word 5, 4, 3, 2, 1