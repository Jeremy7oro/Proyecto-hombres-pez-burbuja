extends ProgressBar



func _process(delta):
	value += 1
	if GLOBAL.Turno == false:
		if value == max_value:
			GLOBAL.Turno = true
	
	if GLOBAL.Win or GLOBAL.Lose:
		visible = false
