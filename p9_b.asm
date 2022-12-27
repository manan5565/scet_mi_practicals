;Write an ALP to copy 16 data-bytes from location starting 
;from 2500H onwards to location starting from 2500H
;in reverse order onwards.
MVI C,05H
LXI SP,2099H
LXI D,2600H

GOIN: PUSH D
MOV A,B
INX D
DCR C
JNZ GOIN

MVI C,05H
LXI H,2500H

GO: MOV A,M
POP D
STAX D
INX H
DCR C
JNZ GO

hlt