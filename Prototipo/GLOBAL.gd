extends Node

var Espada_P1 : int
var Escudo_P1 : int
var Espada_P2 : int
var Escudo_P2 : int


var Turno : bool = false
var Win : bool


func _ready() -> void:
	Win = false


func _process(delta: float) -> void:
	if Turno == true:
		if Espada_P1 > 0 and Espada_P2 > 0:
			if Espada_P1 == Espada_P2:
				pass
			if Espada_P1 == Escudo_P2:
				pass
			if not Espada_P1 == Espada_P2 and not Espada_P1 == Escudo_P2:
				Win = true
	
	#RESET
	if Input.is_key_pressed(KEY_R):
		get_tree().change_scene_to_file("res://Prototipo/PvCPU.tscn")
		Win = false
		Espada_P1 = 0
		Escudo_P1 = 0
		Espada_P2 = 0
		Escudo_P2 = 0
