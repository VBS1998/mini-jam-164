extends Node3D

var tekpix_manager : Node3D
var tekpix_implements : Array[Object] = [IActivatable]

func _ready():
	tekpix_manager = find_child("TekpixManager")

func lose():
	print("Loseeer")

func win():
	print("Boua")

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
		assert(Utils.class_implements(tekpix_manager, tekpix_implements), "TekpixManager does not implement required Interfaces")
		tekpix_manager.activate()
