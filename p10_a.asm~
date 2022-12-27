;Write an ALP to search a byte in a given block of data. 
;The block starts from location 2300H onwards. 
;It consists of 10 data bytes. 

MVI C,10H
LXI H,2300H
MVI B,40
GO: MOV A,M
CMP B
JZ GOT
INX H
DCR C
JNZ GO
MVI A,01H ;PRINTED IF NOT FOUND
GOT: STA 230EH
hlt