extends Node2D

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

const game_scene_path = "res://#game/scenes/real_game/Game.tscn"

func start_button_pressed():
	get_tree().change_scene_to_file(game_scene_path)
