; ============================================
; Demo_Gameplay_Setup
; RAM: 0x800307F4
; Size: 0xB0 bytes
; ============================================

.org 0x800307F4

Demo_Gameplay_Setup:                     

var_s0          equ  0
var_s4          equ  4
sub_80032154    equ  0x80032154
sub_80030388    equ  0x80030388

                addiu   $sp, -0x18       ; Reserved $24 Bytes in Stack
                sw      $s0, 0x10+var_s0($sp)  ; Save $s0 in stack
                li      $s0, dword_80068E98  ; $s0 = base address 0x80068E98
                lw      $v0, Demo_Input  ; Load Pointer from 0x80060A88
                li      $v1, 2           ; $v1 = 2
                sw      $ra, 0x10+var_s4($sp)  ; Save return address
                sw      $v1, (Controls_Flag - 0x80068E98)($s0)  ; Store $v1 (2) to memory address (Lock Controls in Demo Playback)
                lw      $a0, 4($v0)
                addiu   $v0, 0xC9C       ; add 0xC9C to $v0
                sw      $v0, dword_80060A60  ; Save new value
                jal     sub_80032154
                nop
                lui     $v0, 0x8006
                lw      $v1, Demo_Input
                lw      $a0, dword_80061A80
                lw      $v0, 0xC7C($v1)
                lw      $a1, 0xC($v1)
                sw      $v0, 0x10($a0)
                lw      $v0, dword_80060A90
                move    $a0, $v1
                lw      $v0, 8($v0)
                addiu   $a0, 0x10
                sw      $a1, (Frame_Counter - 0x80068E98)($s0)
                lw      $a2, 0xC80($v1)
                lw      $a3, 0xC84($v1)
                lw      $t0, 0xC88($v1)
                lw      $t1, 0xC8C($v1)
                sw      $a2, 0x30($v0)
                sw      $a3, 0x34($v0)
                sw      $t0, 0x38($v0)
                sw      $t1, 0x3C($v0)
                lw      $a2, 0xC90($v1)
                lw      $a3, 0xC94($v1)
                sw      $a2, 0x40($v0)
                sw      $a3, 0x44($v0)
                li      $v0, 0xFFFFFFFF
                jal     sub_80030388
                sw      $v0, (dword_8006900C - 0x80068E98)($s0)
                jal     Demo_Routine
                nop
                lw      $ra, 0x10+var_s4($sp)
                lw      $s0, 0x10+var_s0($sp)
                jr      $ra
                addiu   $sp, 0x18
; End of function Demo_Gameplay_Setup