; ============================================
; Demo_Routine
; RAM: 0x8003079C
; Size: 0x4C bytes
; ============================================

.org 0x8003079C

Demo_Routine:                       
                li      $v1, 0xBAEC2     ; Load immediate value 0xBAEC2 into $v1
                li      $v0, 0x3039      ; Load immediate value 0x3039 into $v0
                sw      $v0, Pseudo_Random_Number  ; Store $v0 (0x3039) to memory address
                li      $v0, dword_80068E98  ; Load address 0x80068E98 into $v0 (base pointer)
                sw      $v1, Pseudo_Random_Number_2  ; Store $v1 (0xBAEC2) to memory address
                li      $v1, 0x100       ; Load immediate value 0x100 (256) into $v1
                sw      $v1, (Portal_Flag - 0x80068E98)($v0)  ; Store $v1 (0x100) to memory address (Disable Portal Spawn on Demo Playback)
                li      $v1, 0x1F        ; Load immediate value 0x1F into $v1
                sw      $v1, (PowerUps_ID_Mask - 0x80068E98)($v0)  ; Store $v1 (0x1F) to memory address (Enable All PowerUps in Demo Playback)
                li      $v1, 0xFFFFFFFF  ; Load immediate value -1 into $v1
                sw      $zero, (Death_Counter_After_Checkpoint - 0x80068E98)($v0)  ; Store 0 to memory address
                sw      $zero, (Checkpoint_Counter - 0x80068E98)($v0)  ; Store 0 to memory address
                sw      $zero, (dword_80068F78 - 0x80068E98)($v0)  ; Store 0 to memory address
                sw      $v1, (dword_8006913C - 0x80068E98)($v0)  ; Store $v1 (-1) to memory address
                jr      $ra              ; Return from function
                sw      $zero, (dword_80069140 - 0x80068E98)($v0)  ; Store 0 to memory address
; End of function Demo_Routine
