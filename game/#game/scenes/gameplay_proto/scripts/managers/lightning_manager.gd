class_name GameplayProtoLightningManager extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func intensify(intensity:float):
	for child in get_children():
		if child is Light3D:
			child.light_energy = 1 - intensity
