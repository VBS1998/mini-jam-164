extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var child: RigidBody3D
	child = find_child("RigidBody3D")
	child.set_contact_monitor(true)
	if (child):
		var children = child.get_colliding_bodies()
		print(children)
		for objectCollision in children:
			if objectCollision.name == "Character":
				print("hmm")
				Utils.get_scene_manager(self).player_reached_goal()
				
