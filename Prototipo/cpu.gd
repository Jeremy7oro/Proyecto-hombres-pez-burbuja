extends Node2D

var Escudo : int
var Espada : int

#Animaciones
@onready var esc_pos = $Escudo2.position
@onready var esp_pos = $Espada2.position



func _process(delta: float) -> void:
	
	if $"../tiempo".value == $"../tiempo".max_value:
		if Escudo <= 0:
			Escudo = randi_range(1,3)
		else:
				while Espada <= 0:
					var rang = randi_range(1,3)
					if not rang == Escudo:
						Espada = rang
						
		GLOBAL.Escudo_P2 = Escudo
		GLOBAL.Espada_P2 = Espada
		$Label.text =  str(Escudo)
		$Label2.text = str(Espada)
		
		#Aimación
		if GLOBAL.Draw:
			position.x += 1
	
	#Reset
	if Input.is_key_pressed(KEY_R) or Input.is_key_pressed(KEY_SPACE) :
		get_tree().change_scene_to_file("res://Prototipo/PvCPU.tscn")
