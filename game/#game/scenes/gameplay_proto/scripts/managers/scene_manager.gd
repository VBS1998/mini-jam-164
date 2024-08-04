class_name GameplayProtoSceneManager extends Node3D

const main_menu_scene_path = "res://#game/scenes/main_menu/main_menu.tscn"
# Called when the node enters the scene tree for the first time.
const TIME_MAX = 10.0
const UPDATE_SPEED = 0.1
var time_spent = 0.0
var time_thread: Thread

var ambient_manager : Node3D

func _ready():
	ambient_manager = find_child("AmbientManager")
	
	time_thread = Thread.new()
	time_thread.start(start_timer.bind(TIME_MAX, UPDATE_SPEED))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ambient_manager.set_amb_intensity(time_spent/TIME_MAX)

func player_reached_goal():
	print("GANHOO")
	get_tree().change_scene_to_file(main_menu_scene_path)	
	
func time_over():
	print("LOST")
	get_tree().change_scene_to_file(main_menu_scene_path)
	
func start_timer(time_sec:float, update_speed:float):
	for i in Utils.rangef(0, time_sec, update_speed):
		await get_tree().create_timer(update_speed).timeout
		time_spent = i
	time_over()
