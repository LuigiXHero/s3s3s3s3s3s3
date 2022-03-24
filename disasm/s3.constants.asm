c_AIZact1	equ	$0000	; AIZ act 1
c_AIZact2	equ	$0001	; AIZ act 2
c_HCZact1	equ	$0100	; HCZ act 1
c_HCZact2	equ	$0101	; HCZ act 2
c_MGZact1	equ	$0200	; MGZ act 1
c_MGZact2	equ	$0201	; MGZ act 2
c_CNZact1	equ	$0300	; CNZ act 1
c_CNZact2	equ	$0301	; CNZ act 2
c_ICZact1	equ	$0500	; ICZ act 1
c_ICZact2	equ	$0501	; ICZ act 2
c_LBZact1	equ	$0600	; LBZ act 1
c_LBZact2	equ	$0601	; LBZ act 2
c_MHZact1	equ	$0700	; MHZ act 1
c_MHZact2	equ	$0701	; MHZ act 2
c_FBZact1	equ	$0400	; FBZ act 1
c_FBZact2	equ	$0401	; FBZ act 2
c_SOZact1	equ	$0800	; SOZ act 1
c_SOZact2	equ	$0801	; SOZ act 2
c_LRZact1	equ	$0900	; LRZ act 1
c_LRZact2	equ	$0901	; LRZ act 2
c_LRZact3	equ	$1600	; LRZ act 3
c_LRZact4	equ	$1601	; LRZ act 4
c_SSZact1	equ	$0A00	; SSZ act 1
c_SSZact2	equ	$0A01	; SSZ act 2
c_DEZact1	equ	$0B00	; DEZ act 1
c_DEZact2	equ	$0B01	; DEZ act 2
c_DDZact1	equ	$0C00	; DDZ act 1
c_DDZact2	equ	$1700	; DDZ act 2
c_BonusStage1	equ	$1400	; Bonus Stage 1
c_BonusStage2	equ	$1500	; Bonus Stage 2
c_SpecialStage1	equ	$4000	; Special Stage 1
c_SpecialStage2	equ	$4001	; Special Stage 2
c_SoundTest	equ	$FFFF	; Sound Test


	phase Level_layout_header+$400
SStage_extra_sprites :=		*			; some extra sprite info for special stages
				ds.b $70		; Sonic & Knuckles has a different address... So uh... Yes
			ds.b $390			; unused
SStage_collision_response_list := *			; some extra sprite info for special stages
			ds.b $100			; unused
SStage_unkA500 :=		*			; unknown special stage array
			ds.b $100			; Sonic & Knuckles has a different address... So uh... Yes
SStage_unkA600 :=		*			; unknown special stage array
			ds.b $100			; Sonic & Knuckles has a different address... So uh... Yes
	dephase

	phase Stat_table+$12
_unkE412			ds.w 1			; unused, but referenced in sphere test
_unkE414			ds.w 1			; used in sphere test
_unkE416			ds.w 1			; used in sphere test
Sphere_test_address		ds.w 1			; address of the sphere test object

Save_pointer :=			Competition_saved_data+$B8; long ; pointer to the active save slot in 1 player mode
Saved_data :=			Competition_saved_data+$CC; $34 bytes ; saved data from 1 player mode
H_int_jump :=			_tempF608		; 6 bytes ; contains an instruction to jump to the H-int handler
H_int_addr :=			H_int_jump+2		; long
	dephase

	phase _unkF712+8
CNZ_bumper_routine		ds.b 1			; left over from Sonic 2
CNZ_bumper_unk			ds.b 1			; left over from Sonic 2 ; set only, never used again
CNZ_visible_bumpers_start	ds.l 1			; left over from Sonic 2
CNZ_Visible_bumpers_end		ds.l 1			; left over from Sonic 2
CNZ_Visible_bumpers_start_P2	ds.l 1			; left over from Sonic 2
CNZ_Visible_bumpers_end_P2	ds.l 1			; left over from Sonic 2
	dephase

	phase _tempFF88
Current_zone_2P			ds.b 1			; left over from Sonic 2
Current_act_2P			ds.b 1			; left over from Sonic 2
Options_menu_box =		_tempFF8C		; byte ; left over from Sonic 2
_unkFF98 =			_tempFF98		; word ; unused
	dephase

	phase Demo_mode_flag
Level_select_flag :=		*
				ds.b 1			; Sonic & Knuckles has a different address... So uh... Yes
Slow_motion_flag :=		*
				ds.b 1			; Sonic & Knuckles has a different address... So uh... Yes
Debug_cheat_flag :=		*			; set if the debug cheat's been entered
				ds.w 1			; Sonic & Knuckles has a different address... So uh... Yes
Level_select_cheat_counter :=	*			; progress entering level select cheat, unused
				ds.w 1			; Sonic & Knuckles has a different address... So uh... Yes
Debug_mode_cheat_counter :=	*			; progress entering debug mode cheat, unused
				ds.w 1			; Sonic & Knuckles has a different address... So uh... Yes
Competition_mode :=		*
				ds.w 1			; Sonic & Knuckles has a different address... So uh... Yes
P1_character :=			*			; 0 := Sonic, 1 := Tails, 2 := Knuckles
				ds.b 1			; Sonic & Knuckles has a different address... So uh... Yes
P2_character :=			*
				ds.b 1			; Sonic & Knuckles has a different address... So uh... Yes
_dbgFFDC			ds.b 1			; seems like a leftover constant. Existed in Sonic 1 and Sonic 2 as well
_dbgFFDD			ds.b 1			; seems like a leftover constant. Existed in Sonic 1 and Sonic 2 as well
_dbgFFDE			ds.b 1			; seems like a leftover constant. Existed in Sonic 1 and Sonic 2 as well
_dbgFFDF			ds.b 1			; seems like a leftover constant. Existed in Sonic 1 and Sonic 2 as well
	dephase

	phase V_int_jump
Demo_mode_flag :=		*
				ds.w 1			; Sonic & Knuckles has a different address... So uh... Yes
Next_demo_number :=		*
				ds.w 1			; Sonic & Knuckles has a different address... So uh... Yes
Ending_demo_number		ds.w 1			; zone for the ending demos, unused
V_blank_cycles :=		*			; the number of cycles between V-blanks
				ds.w 1			; Sonic & Knuckles has a different address... So uh... Yes
Graphics_flags :=		*			; bit 7 set := English system, bit 6 set := PAL system
				ds.b 1			; Sonic & Knuckles has a different address... So uh... Yes
			ds.b 1				; unused
Debug_mode_flag :=		*
				ds.w 1			; Sonic 3 has a different address... So uh... Yes
Checksum_string :=		*			; set to 'init' once the checksum routine has run
				ds.l 1			; Sonic & Knuckles has a different address... So uh... Yes
	dephase
	!org 0

.check2 =	(*)&$FFFFFF
	if (.check2>0)&(.check2<$FF0000)
		fatal "Sonic 3 RAM definitions are too large by $\{*} bytes!"
	endif
