extends Node2D

var Escudo : int 
var Espada : int

#Animaciones
@onready var esc_pos = $Escudo.position
@onready var esp_pos = $Espada.position

func _ready() -> void:
	Escudo = 0
	Espada = 0


func _process(delta: float) -> void:
	GLOBAL.Escudo_P1 = Escudo
	GLOBAL.Espada_P1 = Espada
	if $"../tiempo".value < $"../tiempo".max_value:
		if Escudo <= 0:
			if Input.is_action_pressed("Arriba"):
				Escudo = 1
				
			if Input.is_action_pressed("Medio"):
				Escudo = 2
				
			if Input.is_action_pressed("Abajo"):
				Escudo = 3
				
		elif Espada <= 0:
			$Label.text = str(GLOBAL.Escudo_P1)
			if Input.is_action_pressed("Arriba") and not Escudo == 1:
				Espada = 1
			if Input.is_action_pressed("Medio") and not Escudo == 2:
				Espada = 2
			if Input.is_action_pressed("Abajo") and not Escudo == 3:
				Espada = 3
		elif  Espada > 0:
			
			
			$Label2.text = str(GLOBAL.Espada_P1)
	
	if GLOBAL.Draw:
		position.x -= 1
	
	#Control
	if $"../tiempo".value == $"../tiempo".max_value:
		GLOBAL.Escudo_P1 = Escudo
		GLOBAL.Espada_P1 = Espada
