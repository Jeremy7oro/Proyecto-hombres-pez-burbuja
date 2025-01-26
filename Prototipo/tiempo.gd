extends ProgressBar



func _process(delta):
	value += 0.5
	if GLOBAL.Turno == false:
		if value == max_value:
			GLOBAL.Turno = true
