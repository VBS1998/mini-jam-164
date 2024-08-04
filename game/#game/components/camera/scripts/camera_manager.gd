class_name CameraManager extends Node3D

var flash_node : Node3D
# Called when the node enters the scene tree for the first time.
func _ready():
	flash_node = find_child("Flash")

func activate():
	flash_node.flash()

func _input(event):
	if event.is_pressed():
		activate()
	
