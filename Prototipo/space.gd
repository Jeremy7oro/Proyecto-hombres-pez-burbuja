extends Control

var xd = true

func _ready() -> void:
	visible = false

func _process(delta: float) -> void:
	if not GLOBAL.Turno:
		$Timer.start()
	if $Timer.is_stopped():
		visible = true
