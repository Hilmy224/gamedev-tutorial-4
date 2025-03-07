extends Node2D

@export var obstacle: PackedScene
@export var sceneName: String = "LoseScreen"
@export var lifespan: float = 16.0 

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.y += randf_range(-2000, 2000)
	spawned.global_position = spawn_pos

	# Schedule the obstacle to be removed after `lifespan` seconds
	await get_tree().create_timer(lifespan).timeout
	if is_instance_valid(spawned):
		spawned.queue_free()  

func repeat():
	spawn()
	await get_tree().create_timer(1).timeout
	repeat()
