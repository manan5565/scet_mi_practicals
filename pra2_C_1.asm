
;exchange with temporary register

MVI A,10H
STA 2000H

MVI A,11H
STA 2001H

MOV B,A

LDA 2000H

MOV C,A
MOV A,B

STA 2000H

MOV A,C
STA 2001H

hlt