class_name GameAmbientManager extends Node3D

@export var lightning_manager : Node
@export var world_env_manager : Node
@export var moon_manager : Node
@export var audio_manager : Node

var manager_implements : Array[Object] = [IIntensifiable]
	
func set_amb_intensity(intensity:float):
	assert(Utils.class_implements(lightning_manager, manager_implements), "Lightning Manager does not implement all required interfaces")
	lightning_manager.intensify(intensity)
	assert(Utils.class_implements(world_env_manager, manager_implements), "WE Manager does not implement all required interfaces")
	world_env_manager.intensify(intensity)
	assert(Utils.class_implements(moon_manager, manager_implements), "Moon Manager does not implement all required interfaces")
	moon_manager.intensify(intensity)
	assert(Utils.class_implements(audio_manager, manager_implements), "Moon Manager does not implement all required interfaces")
	audio_manager.intensify(intensity)
	
