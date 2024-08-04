extends CharacterBody3D

@export var nav_region : NavigationRegion3D
var nav_agent : NavigationAgent3D
@export var player : CharacterFpc

const SPEED = 2

func _ready():
	nav_agent = find_child("NavigationAgent3D")

func _process(delta):
	if player != null:
		nav_agent.target_position = player.position
		look_at(player.position)
	

func _physics_process(delta):
	if nav_agent.is_target_reachable():
		if nav_agent.distance_to_target() > 1:
			var next_waypoint = nav_agent.get_next_path_position()
			var direction = global_position.direction_to(next_waypoint).normalized()
			var new_pos = global_position + (direction * delta * SPEED)
			new_pos.y =  global_position.y
			global_position = new_pos

func kill():
	queue_free()

var player_implements : Array[Object] = [IKillable]
func _on_area_3d_body_entered(body):
	if Utils.class_implements(body, player_implements):
		body.kill()
