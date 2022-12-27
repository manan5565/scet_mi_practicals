; Find negative numbers in a block of data
; stored at location 2000H onwards

; Set the starting address of the data block
MVI C, 10H          ; Number of data bytes
LXI H, 2000H        ; Starting address of data block

; Set up a loop to process each data byte
find_negative: MOV A, M          ; Load the current data byte
    CMP A, 0          ; Check if it is negative
    JL found_negative  ; If negative, jump to found_negative label
    INX H             ; Otherwise, move to the next data byte
    DCR C             ; Decrement the loop counter
    JNZ find_negative  ; Repeat the loop until all data bytes are processed
done: JMP exit
    ; No negative numbers found
    

found_negative: JMP done
    ; Negative number found
    ; Print the negative number or do something else with it here
    
exit: HTL
