extends StaticBody2D

@export var sceneName: String = "level2"
@export var move_speed: float = 220.0  # Speed at which the body moves
var movement_direction: Vector2 = Vector2(1, 0)  # Moving right

func _ready() -> void:
	# Move the StaticBody2D right by 3000 pixels
	move_right_for_distance(3000)

func move_right_for_distance(distance: float) -> void:
	var initial_position = position
	var target_position = initial_position + movement_direction * distance
	
	# Move the body to the target position over time (you can adjust speed or animation here)
	while position.x < target_position.x:
		position.x += move_speed * get_process_delta_time()
		await get_tree().create_timer(0.01).timeout  # Small time step to allow the movement to happen gradually

func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	var current_scene = get_tree().get_current_scene().get_name()
	print(current_scene)

	if body.get_name() == "Player":
		if current_scene == sceneName:
			
			global.lives -=1
		if (global.lives == 0):
			global.checkpoint=current_scene
			get_tree().change_scene_to_file(str("res://scenes/game_over.tscn"))
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + sceneName + ".tscn")))

func _on_area_2d_body_entered(body: Node2D) -> void:
	# You can add functionality here if needed
	pass
