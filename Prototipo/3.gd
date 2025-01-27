extends Sprite2D

func _process(delta: float) -> void:
	if GLOBAL.Espada_P1 <= 0 and Input.is_action_pressed("Abajo"):
		queue_free()
	if GLOBAL.Turno:
		queue_free()
