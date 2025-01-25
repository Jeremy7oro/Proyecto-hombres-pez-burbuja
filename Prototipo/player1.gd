extends Node2D

var Escudo : int 
var Espada : int


func _ready() -> void:
	Escudo = 0
	Espada = 0


func _process(delta: float) -> void:
	$Label.text = str(GLOBAL.Escudo_P1)
	$Label2.text = str(GLOBAL.Espada_P1)
	if $"../tiempo".value < $"../tiempo".max_value:
		if Escudo <= 0:
			if Input.is_action_just_released("Arriba"):
				Escudo = 1
			if Input.is_action_just_released("Medio"):
				Escudo = 2
			if Input.is_action_just_released("Abajo"):
				Escudo = 3
		elif Espada <= 0:
			if Input.is_action_just_released("Arriba"):
				Espada = 1
			if Input.is_action_just_released("Medio"):
				Espada = 2
			if Input.is_action_just_released("Abajo"):
				Espada = 3
		if Espada == Escudo:
			Espada = 0
	
	#Control
	if $"../tiempo".value == $"../tiempo".max_value:
		GLOBAL.Escudo_P1 = Escudo
		GLOBAL.Espada_P1 = Espada
