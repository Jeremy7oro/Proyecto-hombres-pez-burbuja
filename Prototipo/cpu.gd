extends Node2D

var Escudo : int
var Espada : int

#Animaciones
#@onready var esc_pos = $Escudo2.position
#@onready var esp_pos = $Espada2.position



func _process(delta: float) -> void:
	
	if $"../tiempo".value > 90 and $"../tiempo".value < 99:
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
	
	
	#ANIMACION
	if $"../tiempo".value > 90 and $"../tiempo".value < 99:
		$"Cuerpo/AnimationPlayer".play("Enfrente")
		if Escudo == 1:
			$"Cuerpo/Escudo/AnimationPlayer".play("Arriba")
		elif Escudo == 2:
			$"Cuerpo/Escudo/AnimationPlayer".play("Medio")
		elif Escudo == 3:
			$"Cuerpo/Escudo/AnimationPlayer".play("Abajo")
		
		if Espada == 1:
			$"Cuerpo/Espada/AnimationPlayer".play("Arriba")
		elif Espada == 2:
			$"Cuerpo/Espada/AnimationPlayer".play("Medio")
		elif Espada == 3:
			$"Cuerpo/Espada/AnimationPlayer".play("Abajo")
