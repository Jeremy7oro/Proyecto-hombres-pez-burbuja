extends Button

func _ready() -> void:
	pass

func  _pressed() -> void:
	get_tree().change_scene_to_file("res://Finale/combate.tscn")
