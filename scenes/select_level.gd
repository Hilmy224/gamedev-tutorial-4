extends LinkButton


func _on_pressed() -> void:
	if(text == "Levels"):
		get_tree().change_scene_to_file(str("res://scenes/Pick_Level.tscn"))
	else:
		get_tree().change_scene_to_file(str("res://scenes/" + text + ".tscn"))
