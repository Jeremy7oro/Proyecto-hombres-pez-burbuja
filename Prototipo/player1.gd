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
	$Label.text = str(GLOBAL.Escudo_P1)
	$Label2.text = str(GLOBAL.Espada_P1)
	if $"../tiempo".value < $"../tiempo".max_value:
		if Escudo <= 0:
			if Input.is_action_pressed("Arriba"):
				Escudo = 1
				$Escudo.position = esc_pos + Vector2(200, -150)
			if Input.is_action_pressed("Medio"):
				Escudo = 2
				$Escudo.position = esc_pos + Vector2(200, 0)
			if Input.is_action_pressed("Abajo"):
				Escudo = 3
				$Escudo.position = esc_pos + Vector2(200,150)
		elif Espada <= 0:
			if Input.is_action_pressed("Arriba") and not Escudo == 1:
				Espada = 1
			if Input.is_action_pressed("Medio") and not Escudo == 2:
				Espada = 2
			if Input.is_action_pressed("Abajo") and not Escudo == 3:
				Espada = 3
		elif  Espada > 0:
			$Espada.position = esp_pos + Vector2(220,150*(Espada-2))
			$Espada.rotation = -90
	
	if GLOBAL.Draw:
		position.x -= 1
	
	#Control
	if $"../tiempo".value == $"../tiempo".max_value:
		GLOBAL.Escudo_P1 = Escudo
		GLOBAL.Espada_P1 = Espada
