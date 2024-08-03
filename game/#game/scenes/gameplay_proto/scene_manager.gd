class_name GameplayProtoSceneManager extends Node3D

const main_menu_scene_path = "res://#game/scenes/main_menu/main_menu.tscn"
# Called when the node enters the scene tree for the first time.
func _ready():
	start_timer(10.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_pressed():
		time_over()

func player_reached_goal():
	print("GANHOO")
	get_tree().change_scene_to_file(main_menu_scene_path)	
	
func time_over():
	print("LOST")
	get_tree().change_scene_to_file(main_menu_scene_path)
	
func start_timer(time_sec:float):
	await get_tree().create_timer(time_sec).timeout
	time_over()
