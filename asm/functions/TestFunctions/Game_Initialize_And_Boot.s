
.org 0x80011628

Game_Initialize_And_Boot:              

;var_s0 equ  0
unk_48AA0 equ 0x80048AA0
unk_154AC equ 0x800154AC
unk_1166C equ 0x8001166C
unk_15658 equ 0x80015658

addiu   $sp, -0x18
sw      $ra, 0x10+var_s0($sp)
jal     unk_48AA0
nop
li      $v0, 1
sw      $v0, Load_CD_Data_Flag
jal     unk_154AC
nop
jal     unk_1166C
li      $a0, 0x3C ; Set Screen Init
jal     unk_15658
nop
lw      $ra, 0x10+var_s0($sp)
move    $v0, $zero
jr      $ra
addiu   $sp, 0x18
; End of function Game_Initialize_And_Boot