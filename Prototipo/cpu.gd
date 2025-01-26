extends Node2D

var Escudo : int
var Espada : int

#Animaciones
@onready var esc_pos = $Escudo2.position
@onready var esp_pos = $Espada2.position



func _process(delta: float) -> void:
	$Label.text = str(GLOBAL.Escudo_P2)
	$Label2.text = str(GLOBAL.Espada_P2)
	if $"../tiempo".value == $"../tiempo".max_value:
		if Escudo <= 0:
			Escudo = randi_range(1,3)
		else:
				while Espada <= 0:
					var rang = randi_range(1,3)
					if not rang == Escudo:
						Espada = rang
						$Escudo2.position = esc_pos + Vector2(-200,150*(Escudo-2))
						$Espada2.position = esp_pos + Vector2(-220,150*(Espada-2))
						$Espada2.rotation = 90
		GLOBAL.Escudo_P2 = Escudo
		GLOBAL.Espada_P2 = Espada
		
		#Aimación
		
