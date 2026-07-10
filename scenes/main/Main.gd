extends Control

@onready var score_label: Label = $MarginContainer/ScoreLabel

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("fly"):
		GameManager.load_game_screen()

func _ready() -> void:
	get_tree().paused = false
	score_label.text = "%03d" % ScoreManager.high_score
