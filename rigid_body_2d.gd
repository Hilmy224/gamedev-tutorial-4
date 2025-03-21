extends RigidBody2D


@export var sceneName: String = "Level1"
	

func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	var current_scene = get_tree().get_current_scene().get_name()
	
	if body.get_name() == "Player":
		if current_scene == sceneName:
			global.lives -=1
		if (global.lives == 0):
			global.checkpoint=current_scene
			get_tree().change_scene_to_file(str("res://scenes/game_over.tscn"))
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + sceneName + ".tscn")))
