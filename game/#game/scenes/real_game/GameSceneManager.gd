extends Node3D

const main_menu_scene_path = "res://#game/scenes/main_menu/main_menu.tscn"

@export var TIME_MAX = 120.0
const UPDATE_SPEED = 0.1
var time_spent = 0.0
var time_thread: Thread

var ambient_manager : Node3D
var tekpix_manager : Node3D
var tekpix_implements : Array[Object] = [IActivatable]

# Called when the node enters the scene tree for the first time.
func _ready():
	ambient_manager = find_child("AmbientManager")
	tekpix_manager = find_child("TekpixManager")
	
	time_thread = Thread.new()
	time_thread.start(start_timer.bind(TIME_MAX, UPDATE_SPEED))
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ambient_manager.set_amb_intensity(time_spent/TIME_MAX)
	
func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
		assert(Utils.class_implements(tekpix_manager, tekpix_implements), "TekpixManager does not implement required Interfaces")
		tekpix_manager.activate()

func lose():
	print("LOST")
	get_tree().change_scene_to_file(main_menu_scene_path)
	
func win():
	print("GANHO")
	get_tree().change_scene_to_file(main_menu_scene_path)

func start_timer(time_sec:float, update_speed:float):
	for i in Utils.rangef(0, time_sec, update_speed):
		await get_tree().create_timer(update_speed).timeout
		time_spent = i
	lose()
