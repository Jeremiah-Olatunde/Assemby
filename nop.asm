  
  
; NOP PROCESSOR CONTROL INSTRUCTION  

START:                       
                
    ; NOP INSTRUCTION THE 8086 TO PERFORM NO OPERATION 
    ; AND SKIP TO THE NEXT FETCH EXECUTE AND DECODE CYCLE
                                                               
    ; THE PROGRAM BELOW WRITE HELLO TO MEM LOCATION 00F0H 
    ; IF AX REGISTER CONTAINS 1 ELSE PERFORM A NOP                                                        
                                                               
    MOV AX, 00001H; WRITE 1 or 0 TO AX REGISTER
    CALL CHECK; BEGIN CONDITION
    HLT;
    
CHECK:                                         
                                          
    ; COMPARE AX CONTENTS TO 1 OR 0
    ; IF COMPARISON IS TRUE, ZERO FLAG IS SET TO 1
    ; USE JZ TO JUMP TO GIVEN SUBROUTINE IF ZERO FLAG IS 0  
    ; USE JZ TO JUMP TO GIVEN SUBROUTINE IF ZERO FLAG IS 1 
    
    CMP AX, 00001H; COMPARE AX CONTENTS TO 1;
    JZ TRUE; 
    JNZ FALSE; IF AX CONTAINS 0 CALL FALSE SUBROUTINE
     
    RET; RETURN TO START SUBROUTINE (LINE 14)
    
TRUE:
            
    ; WRITE HELLO TO LOCATION 000F0H
    MOV DI, 00F0H;
    MOV [DI], 'H'; 
    INC DI;
    MOV [DI], 'E';
    INC DI;
    MOV [DI], 'L';
    INC DI;
    MOV [DI], 'L'; 
    INC DI;
    MOV [DI], '0';
    RET;
    
FALSE:
    NOP;
    RET;
                                                         
                                                         
    
    
