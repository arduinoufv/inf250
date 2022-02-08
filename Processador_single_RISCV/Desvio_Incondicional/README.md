# Instrução J

[Fonte Manual Risc-V](https://riscv.org//wp-content/uploads/2017/05/riscv-spec-v2.2.pdf)

The **JAL** instruction has now moved to the U-Type format with an explicit destination
register, and the **J** instruction has been dropped being replaced by **JAL with rd=x0**. This
removes the only instruction with an implicit destination register and removes the J-Type
instruction format from the base ISA. There is an accompanying reduction in JAL reach, but
a significant reduction in base ISA complexity

Plain unconditional jumps (assembler pseudo-op **J**) are encoded as a **JAL with rd=x0.**

Unlike some other architectures, the **RISC-V jump (JAL with rd=x0)** instruction should **always
be used for unconditional branches instead of a conditional branch instruction with an always true condition**. RISC-V jumps are also PC-relative and support a much wider offset range than
branches, and will not pressure conditional branch prediction tables.


The **jump and link (JAL)** instruction uses the J-type format, where the J-immediate encodes a
signed offset in multiples of 2 bytes. The offset is sign-extended and added to the pc to form the
jump target address. Jumps can therefore target a ±1 MiB range. JAL stores the address of the
instruction following the jump (pc+4) into register rd. The standard software calling convention
uses x1 as the return address register and x5 as an alternate link register.

## example

```
addi x5,x0,3
loop: beq x5,x0, end
addi x5,x5,-1
j loop
end: addi x5,x5,1
```
![](https://raw.githubusercontent.com/arduinoufv/inf250/master/Processador_single_RISCV/Desvio_Incondicional/Screenshot%20from%202022-02-08%2015-18-05.png)


ff9ff06f = 1111 1111 1001 1111 1111 0000 0**110 1111**

JAL = | imm\[20,10:1,11,19:12\] | rd | 110 1111 |

![]()

