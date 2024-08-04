class_name MainMenuSceneManager extends Node2D

const gameplay_proto_scene_path = "res://#game/scenes/real_game/Game.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start_button_pressed():
	get_tree().change_scene_to_file(gameplay_proto_scene_path)
