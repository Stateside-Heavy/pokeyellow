FocusEnergyEffect_: ; f628b (3d:628b)
	ld hl, W_PLAYERBATTSTATUS2
	ld a, [H_WHOSETURN]
	and a
	jr z, .notEnemy
	ld hl, W_ENEMYBATTSTATUS2
.notEnemy
	bit GettingPumped, [hl] ; is mon already using focus energy?
	jr nz, .alreadyUsing
	set GettingPumped, [hl] ; mon is now using focus energy
	callab PlayCurrentMoveAnimation
	ld hl, GettingPumpedText
	jp PrintText
.alreadyUsing
	ld c, $32
	call DelayFrames
	ld hl, PrintButItFailedText_
	ld b, BANK(PrintButItFailedText_)
	jp Bankswitch

GettingPumpedText: ; f62b5 (3d:62b5)
	db $0a
	TX_FAR _GettingPumpedText
	db "@"
