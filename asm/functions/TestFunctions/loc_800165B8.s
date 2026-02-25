.org 0x800165B8

loc_800165D4 equ 0x800165D4
loc_800165DC equ 0x800165DC

loc_800165B8:                            
                lw      $v1, dword_80060ABC
                li      $v0, 2
                beq     $v1, $v0, loc_800165D4
                li      $v0, 0x3C  
                bne     $v1, $v0, loc_800165DC
                nop