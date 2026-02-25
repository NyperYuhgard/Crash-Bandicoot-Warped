.psx
.open "base/SCUS_942.44", "build/SCUS_942.44", 0x8000F800

.include "asm/macros.s"
.include "asm/data/globals.s"

; === Demo_Playback_Things ===    
.include "asm/functions/Demo_Routine.s"
.include "asm/functions/nullsub_9.s"
.include "asm/functions/Demo_Gameplay_Setup.s"
; === Test Functions ===
.include "asm/functions/TestFunctions/loc_800165B8.s"
.include "asm/functions/TestFunctions/Game_Initialize_And_Boot.s"
.close
