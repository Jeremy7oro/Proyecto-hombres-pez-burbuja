extends Timer


func _process(delta: float) -> void:
	if is_stopped():
		get_tree().change_scene_to_file("res://Menus/Menu.tscn")
