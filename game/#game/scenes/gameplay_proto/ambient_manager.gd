class_name GameplayProtoAmbientManager extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func set_light_intensity(intensity:float):
	for child in get_children():
		if child is Light3D:
			child.light_energy = intensity
