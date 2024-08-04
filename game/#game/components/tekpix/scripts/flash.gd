extends Node3D

const FADING_SPEED = 1.2
const ENERGY_MAX = 10
var light : Light3D

var area : Area3D
var target_implements : Array[Object] = [IKillable]
# Called when the node enters the scene tree for the first time.
func _ready():
	light = find_child("SpotLight3D")
	area = find_child("Area3D")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if light.light_energy > 0:
		light.light_energy -= delta * FADING_SPEED * ENERGY_MAX

func flash():
	light.light_energy = ENERGY_MAX
	
	for body in area.get_overlapping_bodies():
		if Utils.class_implements(body, target_implements):
			body.kill()
