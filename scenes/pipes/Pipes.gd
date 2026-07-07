class_name Pipes

extends Node2D


@export var speed: float = 120.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position.x -= speed * delta



func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
