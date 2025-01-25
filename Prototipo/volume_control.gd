extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_music_control_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(1, linear_to_db(value))
	AudioServer.set_bus_mute(1, value < 0.01)
	AudioManager.bg_music.play()


func _on_effect_control_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(2, linear_to_db(value))
	AudioServer.set_bus_mute(2, value < 0.01)
	AudioManager.coin_effect.play()
