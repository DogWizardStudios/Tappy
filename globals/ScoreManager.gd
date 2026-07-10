extends Node

var _score: int = 0

func add_point() -> void:
	_score += 1
	SignalHub.emit_point_scored(_score)
