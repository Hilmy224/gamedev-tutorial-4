extends Area2D


@export var sceneName: String = "level2"
@onready var transition = $ColorRect/AnimationPlayer
func _on_border_body_entered(body) -> void:
	var current_scene = get_tree().get_current_scene().get_name()
	
	print(current_scene)
	
	if body.get_name() == "Player":
		if current_scene:
			if current_scene == sceneName:
				transition.play("fade")
				get_tree().create_timer(2).timeout
				get_tree().change_scene_to_file(str("res://scenes/" + "WinScreenUI" + ".tscn"))
			
		var tree = get_tree()
		if tree:
			transition.play("fade")
			get_tree().create_timer(2).timeout
			tree.change_scene_to_file(str("res://scenes/" + sceneName + ".tscn"))
		
