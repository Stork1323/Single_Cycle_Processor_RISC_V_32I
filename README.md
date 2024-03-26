# Single_Cycle_Processor_RISC_V_32I
This is a project in the Computer Architecture class. The main purpose is design Risc-V CPU single cycle. The processor is about RV32I ISA and is designed in pipeline architecture. 
In this design, only command like if and do not use operations like -, >, <, <<, >>, ... So the design contains some modules to create basic blocks like mux, adder, subtractor,...
The intructions were designed contains:
  add, sub, xor, or, and, sll, srl, sra, slt, sltu
  addi, xori, ori, andi, slli, srli, srai, slti, sltiu
  lw, sw
  beq, bne, blt, bge, bltu, bgeu
  jal, jalr
  lui, auipc
  And an extention instruction: mul
This is the diagram of processor
https://github.com/Stork1323/Single_Cycle_Processor_RISC_V_32I/issues/1#issue-2208791340

