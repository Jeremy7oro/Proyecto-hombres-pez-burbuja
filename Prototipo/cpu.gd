extends Node2D

var Escudo : int
var Espada : int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text = str(GLOBAL.Escudo_P2)
	$Label2.text = str(GLOBAL.Espada_P2)
	if $"../tiempo".value == $"../tiempo".max_value:
		if Escudo <= 0:
			Escudo = randi_range(1,3)
		else:
				while Espada <= 0 or Espada == Escudo:
					Espada = randi_range(1,3)
		GLOBAL.Escudo_P2 = Escudo
		GLOBAL.Espada_P2 = Espada
