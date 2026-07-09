extends Control

@onready var go_label: Label = $MarginContainer/GOLabel

func _ready() -> void:
	SignalHub.tappy_died.connect(game_over)

func game_over() -> void:
	go_label.show()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("TEST"):
		GameManager.load_main_screen()
