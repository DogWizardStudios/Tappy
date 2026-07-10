extends Node


@export var pipes_scene: PackedScene

@onready var upper_spawn: Marker2D = $UpperSpawn
@onready var lower_spawn: Marker2D = $LowerSpawn
@onready var pipes_container: Node = $Pipes



func _ready() -> void:
	ScoreManager.reset_score()
	spawn_pipes()

func _on_spawn_timer_timeout() -> void:
	spawn_pipes()

func spawn_pipes() -> void:
	var new_pipes: Pipes = pipes_scene.instantiate()
	new_pipes.position.y = randf_range(upper_spawn.position.y, lower_spawn.position.y)
	new_pipes.position.x = upper_spawn.position.x
	pipes_container.add_child(new_pipes)
