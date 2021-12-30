  

; INTERUPT PROCESSOR CONTROL INSTRUCTIONS

START:
    
    ; INTERUPTS ALLOW THE 8086 TO RESPONSE TO EXTERNAL INPUT
    ; THE 8086 CONTAINS AN INTERRUPT FLAG (IF)
    ; WHEN ENABLED(1) THE PROCESSOR RESPONDS TO AN INPUT ON THE INTR PIN 
    ; WHEN DISABLE(0) THE PROCESSOR IGNORES INPUTS ON THE INTR PIN
    
    STI; SET THE IF TO 1
    CLI; SET THE IF TO 0
    HLT; HALT THE 8086 PROCESSOR                           
                                                       
                                                         
    
    
