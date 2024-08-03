class_name GameplayProtoAmbientManager extends Node3D

@export var lightning_manager : Node3D
var lightning_manager_implements : Array[Object] = [IIntensifiable]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func set_light_intensity(intensity:float):
	assert(Utils.class_implements(lightning_manager, lightning_manager_implements), "Lightning Manager does not implement all required interfaces")
	lightning_manager.intensify(intensity)
