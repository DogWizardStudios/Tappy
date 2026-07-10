extends Control

@onready var go_label: Label = $MarginContainer/GOLabel
@onready var ui_timer: Timer = $UITimer
@onready var go_press_jump: Label = $MarginContainer/GOPressJump
@onready var go_music: AudioStreamPlayer = $GOMusic
@onready var score_label: Label = $MarginContainer/ScoreLabel

var change_menu_allowed: bool = false

func _ready() -> void:
	SignalHub.tappy_died.connect(game_over)
	SignalHub.point_scored.connect(on_point_scored)
	change_menu_allowed = false

func game_over() -> void:
	go_label.show()
	go_music.play()
	ui_timer.start()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("TEST"):
		GameManager.load_main_screen()
	
	if event.is_action_pressed("fly") and change_menu_allowed:
		GameManager.load_main_screen()


func _on_ui_timer_timeout() -> void:
	go_label.hide()
	go_press_jump.show()
	change_menu_allowed = true

func on_point_scored(score: int) -> void:
	score_label.text = "%03d" % score
