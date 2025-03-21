extends LinkButton



func _on_pressed():
	global.lives=3
	get_tree().change_scene_to_file(str("res://scenes/" + global.checkpoint + ".tscn"))
