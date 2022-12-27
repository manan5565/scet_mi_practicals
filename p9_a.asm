;Write an ALP to copy 16 data-bytes from location starting 
;from 2500H onwards to location starting from 2500H onwards.

MVI C,05H
LXI H,2500H
LXI D,2600H

GO: MOV A,M
STAX D

INX H
INX D
DCR C
JNZ GO

hlt