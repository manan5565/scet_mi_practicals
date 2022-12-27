;Write an ALP to insert a data byte in a given block of data. 
;The block starts from location 2300H onwards. It consists of 10 data 
;bytes. The data byte to be inserted is stored at 2000H and 
;the position where it is to be inserted is stored at 2001H
LXI SP,2099H

MVI A,40
STA 2000H
MVI A,5
STA 2001H


LDA 2000H
MOV E,A
LDA 2001H
MOV D,A
MVI A,00

MVI B,10
MVI C,10

GOP: PUSH B
DCR C
JNZ GOP:

LXI H,2002H

GO: POP C
MOV A,C
CMP D 
JZ GOT
INX H
JNZ GO


GOT: MOV A,E 
MOV M,A

hlt