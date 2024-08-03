class_name GameplayProtoSceneManager extends Node3D


const main_menu_scene_path = "res://#game/scenes/main_menu/main_menu.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func player_reached_goal():
	print("GANHOO")
	
func time_over():
	print("LOST")
	get_tree().change_scene_to_file(main_menu_scene_path)
