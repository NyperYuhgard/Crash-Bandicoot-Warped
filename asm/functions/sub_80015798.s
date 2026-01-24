sub_80015798:                            # CODE XREF: sub_8001D674+24↓p
                                         # sub_8002FA1C+2C↓p

var_10          = -0x10
var_8           = -8
var_s0          =  0
var_s4          =  4
var_s8          =  8
var_sC          =  0xC
var_s10         =  0x10
var_s14         =  0x14
var_s18         =  0x18
var_s1C         =  0x1C
var_s20         =  0x20
var_s24         =  0x24

                lw      $v0, dword_80065BC8
                addiu   $sp, -0x48
                sw      $s4, 0x20+var_s10($sp)
                move    $s4, $zero
                sw      $ra, 0x20+var_s24($sp)
                sw      $fp, 0x20+var_s20($sp)
                sw      $s7, 0x20+var_s1C($sp)
                sw      $s6, 0x20+var_s18($sp)
                sw      $s5, 0x20+var_s14($sp)
                sw      $s3, 0x20+var_sC($sp)
                sw      $s2, 0x20+var_s8($sp)
                sw      $s1, 0x20+var_s4($sp)
                blez    $v0, loc_80016018
                sw      $s0, 0x20+var_s0($sp)
                li      $s7, 1
                lui     $v0, 0x8007
                addiu   $s1, $v0, (dword_80068E98 - 0x80070000)
                li      $fp, 3
                move    $s6, $s4
                move    $s5, $s4

loc_800157EC:                            # CODE XREF: sub_80015798+878↓j
                li      $v0, byte_80065BCC
                addu    $s0, $s6, $v0
                lw      $v0, 0x2C($s0)
                lw      $v1, 0x28($s0)
                lw      $a1, 0x24($s0)
                move    $a0, $s5
                sw      $v0, 0x34($s0)
                sw      $v1, 0x2C($s0)
                jal     sub_80048F00
                sw      $a1, 0x30($s0)
                li      $v1, 6
                bne     $v0, $v1, loc_80015878
                move    $a0, $s5
                li      $a1, 1
                jal     sub_80048FC0
                move    $a2, $zero
                li      $v1, 7
                beq     $v0, $v1, loc_8001585C
                nop
                lw      $v0, 0x48($s0)
                nop
                bne     $v0, $s7, loc_8001585C
                move    $a0, $s5
                li      $a1, 1
                jal     sub_8004926C
                move    $a2, $zero
                sw      $zero, 0x48($s0)

loc_8001585C:                            # CODE XREF: sub_80015798+9C↑j
                                         # sub_80015798+AC↑j
                li      $a1, dword_800608EC
                jal     sub_80049234
                move    $a0, $s5
                li      $v0, 2
                j       loc_8001587C
                sw      $v0, 0x44($s0)
 # ---------------------------------------------------------------------------

loc_80015878:                            # CODE XREF: sub_80015798+84↑j
                sw      $zero, 0x44($s0)

loc_8001587C:                            # CODE XREF: sub_80015798+D8↑j
                lb      $v0, 0($s0)
                nop
                bnez    $v0, loc_80015C8C
                li      $v0, 0x53  # 'S'
                lb      $v1, 1($s0)
                nop
                beq     $v1, $v0, loc_800158D4
                slti    $v0, $v1, 0x54  # 'T'
                beqz    $v0, loc_800158B4
                li      $v0, 0x12
                beq     $v1, $v0, loc_800158C8
                nop
                j       loc_80015B20
                move    $s2, $zero
 # ---------------------------------------------------------------------------

loc_800158B4:                            # CODE XREF: sub_80015798+104↑j
                li      $v0, 0x73  # 's'
                beq     $v1, $v0, loc_800158D4
                move    $s2, $zero
                j       loc_80015B24
                move    $s3, $s2
 # ---------------------------------------------------------------------------

loc_800158C8:                            # CODE XREF: sub_80015798+10C↑j
                sw      $s7, 0x48($s0)
                j       loc_80015B4C
                sb      $s7, 0($s0)
 # ---------------------------------------------------------------------------

loc_800158D4:                            # CODE XREF: sub_80015798+FC↑j
                                         # sub_80015798+120↑j
                lbu     $s3, 6($s0)
                lw      $a0, (dword_80069158 - 0x80068E98)($s1)
                lbu     $s2, 7($s0)
                subu    $s3, $a0
                bgez    $s3, loc_800158F8
                sll     $v1, $s3, 7
                lw      $v0, (dword_80069160 - 0x80068E98)($s1)
                j       loc_80015904
                subu    $v0, $a0, $v0
 # ---------------------------------------------------------------------------

loc_800158F8:                            # CODE XREF: sub_80015798+14C↑j
                lw      $v0, (dword_80069168 - 0x80068E98)($s1)
                nop
                subu    $v0, $a0

loc_80015904:                            # CODE XREF: sub_80015798+158↑j
                div     $v1, $v0
                bnez    $v0, loc_80015914
                nop
                break   7
 # ---------------------------------------------------------------------------

loc_80015914:                            # CODE XREF: sub_80015798+170↑j
                li      $at, 0xFFFFFFFF
                bne     $v0, $at, loc_8001592C
                lui     $at, 0x8000
                bne     $v1, $at, loc_8001592C
                nop
                break   6
 # ---------------------------------------------------------------------------

loc_8001592C:                            # CODE XREF: sub_80015798+180↑j
                                         # sub_80015798+188↑j
                mflo    $s3
                nop
                slti    $v0, $s3, 0x7F
                beqz    $v0, loc_80015954
                li      $v1, 0xFFFFFF80
                slt     $v0, $s3, $v1
                bnez    $v0, loc_80015958
                nop
                j       loc_80015958
                move    $v1, $s3
 # ---------------------------------------------------------------------------

loc_80015954:                            # CODE XREF: sub_80015798+1A0↑j
                li      $v1, 0x7F

loc_80015958:                            # CODE XREF: sub_80015798+1AC↑j
                                         # sub_80015798+1B4↑j
                lw      $a0, (dword_8006915C - 0x80068E98)($s1)
                nop
                subu    $s2, $a0
                bgez    $s2, loc_80015980
                move    $s3, $v1
                sll     $v1, $s2, 7
                lw      $v0, (dword_80069164 - 0x80068E98)($s1)
                subu    $v1, $s2
                j       loc_80015990
                subu    $v0, $a0, $v0
 # ---------------------------------------------------------------------------

loc_80015980:                            # CODE XREF: sub_80015798+1CC↑j
                sll     $v1, $s2, 7
                lw      $v0, (dword_8006916C - 0x80068E98)($s1)
                subu    $v1, $s2
                subu    $v0, $a0

loc_80015990:                            # CODE XREF: sub_80015798+1E0↑j
                div     $v1, $v0
                bnez    $v0, loc_800159A0
                nop
                break   7
 # ---------------------------------------------------------------------------

loc_800159A0:                            # CODE XREF: sub_80015798+1FC↑j
                li      $at, 0xFFFFFFFF
                bne     $v0, $at, loc_800159B8
                lui     $at, 0x8000
                bne     $v1, $at, loc_800159B8
                nop
                break   6
 # ---------------------------------------------------------------------------

loc_800159B8:                            # CODE XREF: sub_80015798+20C↑j
                                         # sub_80015798+214↑j
                mflo    $s2
                nop
                slti    $v0, $s2, 0x7F
                beqz    $v0, loc_800159E0
                li      $v1, 0xFFFFFF80
                slt     $v0, $s2, $v1
                bnez    $v0, loc_800159E8
                lui     $v0, 0x8006
                j       loc_800159E8
                move    $v1, $s2
 # ---------------------------------------------------------------------------

loc_800159E0:                            # CODE XREF: sub_80015798+22C↑j
                li      $v1, 0x7F
                lui     $v0, 0x8006

loc_800159E8:                            # CODE XREF: sub_80015798+238↑j
                                         # sub_80015798+240↑j
                lw      $v0, dword_80065D5C
                nop
                beqz    $v0, loc_80015A34
                move    $s2, $v1
                lw      $v0, 0x10($v0)
                nop
                lw      $v0, 0x2DC($v0)
                lui     $v1, 0x20  # ' '
                and     $v0, $v1
                beqz    $v0, loc_80015A34
                move    $a0, $s3
                jal     sub_8004F794
                move    $a1, $s2
                andi    $a0, $v0, 0xFFF
                li      $a1, 0x200
                jal     sub_8001FD58
                li      $a2, 0x5000
                j       loc_80015A48
                sw      $v0, 0x38($s0)
 # ---------------------------------------------------------------------------

loc_80015A34:                            # CODE XREF: sub_80015798+258↑j
                                         # sub_80015798+274↑j
                move    $a0, $s3
                jal     sub_8004F794
                move    $a1, $s2
                andi    $v0, 0xFFF
                sw      $v0, 0x38($s0)

loc_80015A48:                            # CODE XREF: sub_80015798+294↑j
                lw      $v1, 0x38($s0)
                li      $v0, 0x8FA
                subu    $v0, $v1
                andi    $v0, 0xFFF
                bgez    $v0, loc_80015A64
                mult    $s3, $s3
                addiu   $v0, 0x1FF

loc_80015A64:                            # CODE XREF: sub_80015798+2C0↑j
                mflo    $v1
                nop
                nop
                mult    $s2, $s2
                sra     $v0, 9
                sw      $v0, 0x40($s0)
                mflo    $t1
                jal     sub_8003D9DC
                addu    $a0, $v1, $t1
                sll     $v0, 8
                sra     $v0, 7
                sw      $v0, 0x3C($s0)
                slti    $v0, 0x66  # 'f'
                beqz    $v0, loc_80015AA8
                li      $v0, 8
                sw      $zero, 0x3C($s0)
                sw      $v0, 0x40($s0)

loc_80015AA8:                            # CODE XREF: sub_80015798+300↑j
                lhu     $v1, 2($s0)
                nop
                andi    $v0, $v1, 0xFF
                sll     $v0, 8
                srl     $v1, 8
                nor     $a0, $v1, $v0
                lb      $v1, 1($s0)
                andi    $v0, $a0, 0xFFFF
                sw      $v0, 0x28($s0)
                li      $v0, 0x53  # 'S'
                bne     $v1, $v0, loc_80015B4C
                andi    $v0, $a0, 2
                beqz    $v0, loc_80015AE4
                andi    $v1, $a0, 0xF961
                ori     $v1, 4

loc_80015AE4:                            # CODE XREF: sub_80015798+340↑j
                andi    $v0, $a0, 4
                beqz    $v0, loc_80015AF4
                andi    $v0, $a0, 8
                ori     $v1, 0x80

loc_80015AF4:                            # CODE XREF: sub_80015798+350↑j
                beqz    $v0, loc_80015B00
                andi    $v0, $a0, 0x10
                ori     $v1, 0x10

loc_80015B00:                            # CODE XREF: sub_80015798:loc_80015AF4↑j
                beqz    $v0, loc_80015B0C
                andi    $v0, $a0, 0x80
                ori     $v1, 8

loc_80015B0C:                            # CODE XREF: sub_80015798:loc_80015B00↑j
                beqz    $v0, loc_80015B18
                nop
                ori     $v1, 2

loc_80015B18:                            # CODE XREF: sub_80015798:loc_80015B0C↑j
                j       loc_80015B4C
                sw      $v1, 0x28($s0)
 # ---------------------------------------------------------------------------

loc_80015B20:                            # CODE XREF: sub_80015798+114↑j
                move    $s3, $s2

loc_80015B24:                            # CODE XREF: sub_80015798+128↑j
                lhu     $v0, 2($s0)
                li      $v1, 8
                sw      $zero, 0x3C($s0)
                sw      $v1, 0x40($s0)
                andi    $v1, $v0, 0xFF
                sll     $v1, 8
                srl     $v0, 8
                nor     $v0, $v1
                andi    $v0, 0xFFFF
                sw      $v0, 0x28($s0)

loc_80015B4C:                            # CODE XREF: sub_80015798+134↑j
                                         # sub_80015798+338↑j ...
                lw      $v0, 0x44($s0)
                nop
                beqz    $v0, loc_80015C90
                nop
                bnez    $s4, Load_Demo
                nop
                lw      $v0, (dword_80068F78 - 0x80068E98)($s1)
                nop
                andi    $v0, 2
                bnez    $v0, loc_80015C1C
                nop
                lw      $v0, dword_8006087C
                nop
                bnez    $v0, loc_80015C1C
                nop
                lw      $v0, (Controls_Flag - 0x80068E98)($s1)
                nop
                bnez    $v0, loc_80015C1C
                li      $v0, 0x100
                lw      $v1, (dword_80068F3C - 0x80068E98)($s1)
                nop
                bne     $v1, $v0, loc_80015C1C
                nop
                lw      $v0, (dword_80069024 - 0x80068E98)($s1)
                nop
                beqz    $v0, loc_80015BE0
                addiu   $v0, -1
                andi    $v0, 0x1F
                lw      $v1, (dword_80068FFC - 0x80068E98)($s1)
                sllv    $v0, $s7, $v0
                and     $v0, $v1
                beqz    $v0, loc_80015BD8
                move    $a0, $zero
                li      $a0, 0xFF

loc_80015BD8:                            # CODE XREF: sub_80015798+434↑j
                j       loc_80015BE4
                sb      $a0, 0x4C($s0)
 # ---------------------------------------------------------------------------

loc_80015BE0:                            # CODE XREF: sub_80015798+41C↑j
                sb      $zero, 0x4C($s0)

loc_80015BE4:                            # CODE XREF: sub_80015798:loc_80015BD8↑j
                lw      $v0, (dword_8006908C - 0x80068E98)($s1)
                nop
                beqz    $v0, loc_80015C00
                nop
                lbu     $v0, (dword_80069088 - 0x80068E98)($s1)
                j       loc_80015C24
                sb      $v0, 0x4D($s0)
 # ---------------------------------------------------------------------------

loc_80015C00:                            # CODE XREF: sub_80015798+454↑j
                lw      $v0, (dword_800690B8 - 0x80068E98)($s1)
                nop
                beqz    $v0, loc_80015C20
                nop
                lbu     $v0, (dword_800690BC - 0x80068E98)($s1)
                j       loc_80015C24
                sb      $v0, 0x4D($s0)
 # ---------------------------------------------------------------------------

loc_80015C1C:                            # CODE XREF: sub_80015798+3D8↑j
                                         # sub_80015798+3EC↑j ...
                sb      $zero, 0x4C($s0)

loc_80015C20:                            # CODE XREF: sub_80015798+470↑j
                sb      $zero, 0x4D($s0)

loc_80015C24:                            # CODE XREF: sub_80015798+460↑j
                                         # sub_80015798+47C↑j
                lw      $v0, dword_8006087C
                nop
                bnez    $v0, loc_80015C78
                move    $a0, $s5
                lw      $v0, (dword_80069024 - 0x80068E98)($s1)
                nop
                beqz    $v0, loc_80015C4C
                addiu   $v0, -1
                sw      $v0, (dword_80069024 - 0x80068E98)($s1)

loc_80015C4C:                            # CODE XREF: sub_80015798+4A8↑j
                lw      $v0, (dword_8006908C - 0x80068E98)($s1)
                nop
                beqz    $v0, loc_80015C60
                addiu   $v0, -1
                sw      $v0, (dword_8006908C - 0x80068E98)($s1)

loc_80015C60:                            # CODE XREF: sub_80015798+4BC↑j
                lw      $v0, (dword_800690B8 - 0x80068E98)($s1)
                nop
                beqz    $v0, loc_80015C74
                addiu   $v0, -1
                sw      $v0, (dword_800690B8 - 0x80068E98)($s1)

loc_80015C74:                            # CODE XREF: sub_80015798+4D0↑j
                move    $a0, $s5

loc_80015C78:                            # CODE XREF: sub_80015798+498↑j
                addiu   $a1, $s0, 0x4C  # 'L'
                jal     sub_800492B4
                li      $a2, 2
                j       loc_80015C90
                nop
 # ---------------------------------------------------------------------------

loc_80015C8C:                            # CODE XREF: sub_80015798+EC↑j
                sw      $s7, 0x48($s0)

loc_80015C90:                            # CODE XREF: sub_80015798+3BC↑j
                                         # sub_80015798+4EC↑j
                bnez    $s4, Load_Demo
                nop
                lw      $v1, (Controls_Flag - 0x80068E98)($s1)
                nop
                beq     $v1, $fp, loc_80015CD4
                sltiu   $v0, $v1, 4
                beqz    $v0, loc_80015CC0
                li      $v0, 2
                beq     $v1, $v0, loc_80015D48
                li      $v0, 8
                j       Load_Demo
                nop
 # ---------------------------------------------------------------------------

loc_80015CC0:                            # CODE XREF: sub_80015798+510↑j
                li      $v0, 4
                beq     $v1, $v0, loc_80015CDC
                nop
                j       Load_Demo
                nop
 # ---------------------------------------------------------------------------

loc_80015CD4:                            # CODE XREF: sub_80015798+508↑j
                j       Load_Demo
                sw      $zero, 0x28($s0)
 # ---------------------------------------------------------------------------

loc_80015CDC:                            # CODE XREF: sub_80015798+52C↑j
                lw      $v0, (Fade_Timer - 0x80068E98)($s1)
                nop
                addiu   $v0, 1
                sltiu   $v0, 2
                beqz    $v0, Load_Demo
                nop
                lw      $v0, 0x210($gp)
                lw      $a0, 0x1E8($gp)
                lw      $v1, 0($v0)
                lw      $a1, (dword_80069028 - 0x80068E98)($s1)
                sll     $v1, 3
                addiu   $v1, 0xC9C
                addu    $v0, $v1
                sltu    $a0, $v0
                xori    $a0, 1
                beqz    $a1, loc_80015DFC
                sw      $a0, 0x20+var_8($sp)
                move    $a0, $zero
                li      $a2, 0xE00
                addiu   $v0, $sp, 0x20+var_8
                li      $a3, 1
                jal     sub_8001DB38
                sw      $v0, 0x20+var_10($sp)
                li      $v0, 0x108
                sw      $v0, (dword_80068F08 - 0x80068E98)($s1)
                j       Load_Demo
                sw      $fp, (Controls_Flag - 0x80068E98)($s1)
 # ---------------------------------------------------------------------------

loc_80015D48:                            # CODE XREF: sub_80015798+518↑j
                lw      $a0, 0x210($gp)
                sw      $v0, 0x40($s0)
                lw      $v0, 0x1E8($gp)
                lw      $a1, 0x28($s0)
                addiu   $v1, $a0, 0xC9C
                bne     $v0, $v1, loc_80015D78
                sw      $zero, 0x3C($s0)
                lui     $v0, 0x8006
                lw      $v1, dword_80061A7C
                lw      $v0, 0xC98($a0)
                nop
                sw      $v0, 0x18($v1)

loc_80015D78:                            # CODE XREF: sub_80015798+5C4↑j
                lw      $v0, 0x1E8($gp)
                nop
                addiu   $a0, $v0, 8
                lw      $v1, 4($v0)
                andi    $v0, $a1, 0x9F0
                sw      $a0, 0x1E8($gp)
                beqz    $v0, loc_80015DA8
                sw      $v1, 0x28($s0)
                lb      $v0, 0($s0)
                nop
                beqz    $v0, loc_80015DD0
                nop

loc_80015DA8:                            # CODE XREF: sub_80015798+5F8↑j
                lw      $v1, 0x210($gp)
                nop
                lw      $v0, 0($v1)
                nop
                sll     $v0, 3
                addiu   $v0, 0xC9C
                addu    $v1, $v0
                sltu    $v1, $a0, $v1
                bnez    $v1, Load_Demo
                nop

loc_80015DD0:                            # CODE XREF: sub_80015798+608↑j
                lw      $v0, (dword_80069028 - 0x80068E98)($s1)
                nop
                beqz    $v0, loc_80015DFC
                lui     $a0, 0xFFFF
                li      $a0, 0xFFFF6FF5
                lw      $v1, (dword_80068F08 - 0x80068E98)($s1)
                li      $v0, 4
                sw      $v0, (Controls_Flag - 0x80068E98)($s1)
                and     $v1, $a0
                j       Load_Demo
                sw      $v1, (dword_80068F08 - 0x80068E98)($s1)
 # ---------------------------------------------------------------------------

loc_80015DFC:                            # CODE XREF: sub_80015798+580↑j
                                         # sub_80015798+640↑j
                sw      $zero, (Controls_Flag - 0x80068E98)($s1)

Load_Demo:                               # CODE XREF: sub_80015798+3C4↑j
                                         # sub_80015798:loc_80015C90↑j ...
                lw      $v0, (dword_80068F1C - 0x80068E98)($s1)  # Demo ID?
                lui     $v1, 1
                and     $v0, $v1
                bnez    $v0, loc_80015E28
                nop
                lw      $v0, dword_8006087C
                nop
                beqz    $v0, loc_80015E48
                lui     $a0, 0xFFFF

loc_80015E28:                            # CODE XREF: sub_80015798+674↑j
                lb      $v0, 0($s0)
                nop
                beqz    $v0, loc_80015E64
                nop
                lw      $v0, (Controls_Flag - 0x80068E98)($s1)
                nop
                bnez    $v0, loc_80015E64
                lui     $a0, 0xFFFF

loc_80015E48:                            # CODE XREF: sub_80015798+688↑j
                li      $a0, 0xFFFF0F13
                lw      $v1, 0x28($s0)
                li      $v0, 8
                sw      $zero, 0x3C($s0)
                sw      $v0, 0x40($s0)
                and     $v1, $a0
                sw      $v1, 0x28($s0)

loc_80015E64:                            # CODE XREF: sub_80015798+698↑j
                                         # sub_80015798+6A8↑j
                lw      $v1, 0x28($s0)
                nop
                andi    $v0, $v1, 0x1000
                beqz    $v0, loc_80015E84
                li      $v0, 0xFFFFBFFF
                and     $v0, $v1, $v0
                sw      $v0, 0x28($s0)
                lw      $v1, 0x28($s0)

loc_80015E84:                            # CODE XREF: sub_80015798+6D8↑j
                nop
                andi    $v0, $v1, 0x8000
                beqz    $v0, loc_80015E9C
                li      $v0, 0xFFFFDFFF
                and     $v0, $v1, $v0
                sw      $v0, 0x28($s0)

loc_80015E9C:                            # CODE XREF: sub_80015798+6F4↑j
                li      $v0, dword_80065BC8
                addu    $v0, $s6, $v0
                lw      $v0, 0x2C($v0)
                nop
                andi    $v0, 0xF000
                srl     $v1, $v0, 12
                beqz    $v1, loc_80015F00
                lui     $v0, 0x8006
                li      $v0, dword_8005BF00
                sll     $v1, 4
                addu    $v1, $v0
                lw      $v0, 0($v1)
                nop
                sw      $v0, 0x40($s0)
                lw      $v0, 4($v1)
                nop
                sw      $v0, 0x38($s0)
                lw      $v0, 8($v1)
                nop
                sw      $v0, 0x3C($s0)
                lb      $v0, 0xD($v1)
                lb      $s3, 0xC($v1)
                j       def_80015F28     # jumptable 80015F28 default case
                negu    $s2, $v0
 # ---------------------------------------------------------------------------

loc_80015F00:                            # CODE XREF: sub_80015798+720↑j
                lw      $v1, 0x40($s0)
                nop
                sltiu   $v0, $v1, 8      # switch 8 cases
                beqz    $v0, def_80015F28  # jumptable 80015F28 default case
                lui     $v0, 0x8001
                li      $v0, jpt_80015F28
                sll     $v1, 2
                addu    $v1, $v0
                lw      $v0, 0($v1)
                nop
                jr      $v0              # switch jump
                nop
 # ---------------------------------------------------------------------------

loc_80015F30:                            # CODE XREF: sub_80015798+790↑j
                                         # DATA XREF: TEXT:jpt_80015F28↑o
                lw      $v0, 0x28($s0)   # jumptable 80015F28 case 0
                j       loc_80015F90
                ori     $v0, 0x1000
 # ---------------------------------------------------------------------------

loc_80015F3C:                            # CODE XREF: sub_80015798+790↑j
                                         # DATA XREF: TEXT:jpt_80015F28↑o
                lw      $v0, 0x28($s0)   # jumptable 80015F28 case 1
                j       loc_80015F90
                ori     $v0, 0x3000
 # ---------------------------------------------------------------------------

loc_80015F48:                            # CODE XREF: sub_80015798+790↑j
                                         # DATA XREF: TEXT:jpt_80015F28↑o
                lw      $v0, 0x28($s0)   # jumptable 80015F28 case 2
                j       loc_80015F90
                ori     $v0, 0x2000
 # ---------------------------------------------------------------------------

loc_80015F54:                            # CODE XREF: sub_80015798+790↑j
                                         # DATA XREF: TEXT:jpt_80015F28↑o
                lw      $v0, 0x28($s0)   # jumptable 80015F28 case 3
                j       loc_80015F90
                ori     $v0, 0x6000
 # ---------------------------------------------------------------------------

loc_80015F60:                            # CODE XREF: sub_80015798+790↑j
                                         # DATA XREF: TEXT:jpt_80015F28↑o
                lw      $v0, 0x28($s0)   # jumptable 80015F28 case 4
                j       loc_80015F90
                ori     $v0, 0x4000
 # ---------------------------------------------------------------------------

loc_80015F6C:                            # CODE XREF: sub_80015798+790↑j
                                         # DATA XREF: TEXT:jpt_80015F28↑o
                lw      $v0, 0x28($s0)   # jumptable 80015F28 case 5
                j       loc_80015F90
                ori     $v0, 0xC000
 # ---------------------------------------------------------------------------

loc_80015F78:                            # CODE XREF: sub_80015798+790↑j
                                         # DATA XREF: TEXT:jpt_80015F28↑o
                lw      $v0, 0x28($s0)   # jumptable 80015F28 case 6
                j       loc_80015F90
                ori     $v0, 0x8000
 # ---------------------------------------------------------------------------

loc_80015F84:                            # CODE XREF: sub_80015798+790↑j
                                         # DATA XREF: TEXT:jpt_80015F28↑o
                lw      $v0, 0x28($s0)   # jumptable 80015F28 case 7
                nop
                ori     $v0, 0x9000

loc_80015F90:                            # CODE XREF: sub_80015798+79C↑j
                                         # sub_80015798+7A8↑j ...
                sw      $v0, 0x28($s0)

def_80015F28:                            # CODE XREF: sub_80015798+760↑j
                                         # sub_80015798+774↑j
                beqz    $s4, loc_80015FAC  # jumptable 80015F28 default case
                nop
                beq     $s4, $s7, loc_80015FD0
                negu    $v0, $s2
                j       loc_80015FE8
                addiu   $s6, 0x50  # 'P'
 # ---------------------------------------------------------------------------

loc_80015FAC:                            # CODE XREF: sub_80015798:def_80015F28↑j
                lw      $v0, 0x3C($s0)
                nop
                sw      $v0, (dword_800690E8 - 0x80068E98)($s1)
                lw      $v1, 0x38($s0)
                negu    $v0, $s2
                sw      $s3, (dword_8006917C - 0x80068E98)($s1)
                sw      $v0, (dword_80069180 - 0x80068E98)($s1)
                j       loc_80015FE4
                sw      $v1, (dword_800690EC - 0x80068E98)($s1)
 # ---------------------------------------------------------------------------

loc_80015FD0:                            # CODE XREF: sub_80015798+804↑j
                sw      $s3, (dword_80069198 - 0x80068E98)($s1)
                sw      $v0, (dword_8006919C - 0x80068E98)($s1)
                lw      $v0, 0x28($s0)
                nop
                sw      $v0, (dword_800690F4 - 0x80068E98)($s1)

loc_80015FE4:                            # CODE XREF: sub_80015798+830↑j
                addiu   $s6, 0x50  # 'P'

loc_80015FE8:                            # CODE XREF: sub_80015798+80C↑j
                lw      $v1, 0x2C($s0)
                lw      $v0, 0x28($s0)
                nor     $v1, $zero, $v1
                and     $v0, $v1
                andi    $v0, 0xFFFF
                sw      $v0, 0x24($s0)
                lw      $v0, dword_80065BC8
                addiu   $s4, 1
                slt     $v0, $s4, $v0
                bnez    $v0, loc_800157EC
                addiu   $s5, 0x10

loc_80016018:                            # CODE XREF: sub_80015798+34↑j
                lw      $ra, 0x20+var_s24($sp)
                lw      $fp, 0x20+var_s20($sp)
                lw      $s7, 0x20+var_s1C($sp)
                lw      $s6, 0x20+var_s18($sp)
                lw      $s5, 0x20+var_s14($sp)
                lw      $s4, 0x20+var_s10($sp)
                lw      $s3, 0x20+var_sC($sp)
                lw      $s2, 0x20+var_s8($sp)
                lw      $s1, 0x20+var_s4($sp)
                lw      $s0, 0x20+var_s0($sp)
                jr      $ra
                addiu   $sp, 0x48
 # End of function sub_80015798