extends Area3D

func _on_body_entered(body):
	if body is CharacterBody3D:
		Utils.get_scene_manager(self).player_reached_goal()