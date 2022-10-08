
;exchange without temp register

MVI A,00H

MVI B,25H

MVI D,20H

MOV A,B

XRA D

MOV B,A

XRA D

MOV D,A

MOV A,B

XRA D

;MOV B,A


hlt