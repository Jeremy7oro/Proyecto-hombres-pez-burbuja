extends Node2D

@export var Reset : PackedScene


func _process(delta: float) -> void:
	if Input.is_action_pressed("Resetar"):
		get_child(1).queue_free()
		add_child(Reset.instantiate())
