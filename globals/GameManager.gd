extends Node

const MAIN = preload("uid://bk7wx4bliuk8n")
const GAME = preload("uid://bnqilomf5vcb8")
const LOADING = preload("uid://bg6hye15g22ul")



#region Original

#func load_game_screen() -> void:
	#get_tree().change_scene_to_packed(GAME)
#
#
#func load_main_screen() -> void:
	#get_tree().change_scene_to_packed(MAIN)

#endregion

#region Simple transition

var _next_scene: PackedScene

func change_to_next () -> void:
	get_tree().change_scene_to_packed(_next_scene)

func load_game_screen() -> void:
	_next_scene = GAME
	get_tree().change_scene_to_packed(LOADING)


func load_main_screen() -> void:
	_next_scene = MAIN
	get_tree().change_scene_to_packed(LOADING)

#endregion
