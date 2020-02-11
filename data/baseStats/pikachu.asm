db DEX_PIKACHU ; pokedex id
db 135 ; base hp
db 5 ; base attack
db 120 ; base defense
db 150 ; base speed
db 180 ; base special
db ELECTRIC ; species type 1
db GHOST ; species type 2
db 190 ; catch rate
db 82 ; base exp yield
INCBIN "pic/ymon/pikachu.pic",0,1 ; 55, sprite dimensions
dw PikachuPicFront
dw PikachuPicBack
; attacks known at lvl 0
db THUNDERBOLT
db ICE_BEAM
db FLAMETHROWER
db RAZOR_LEAF
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,16
	tmlearn 17,19,20,24
	tmlearn 25,31,32
	tmlearn 33,34,39,40
	tmlearn 44,45
	tmlearn 50,55
db 0 ; padding
