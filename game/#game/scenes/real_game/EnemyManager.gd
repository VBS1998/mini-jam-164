class_name EnemyManager extends Node3D

@export var scene_manager : Node3D
var scene_manager_implements : Array[Object] = [IGameController]

func on_enemy_killed():
	if get_child_count() <= 1:
		assert(Utils.class_implements(scene_manager, scene_manager_implements), "Scene Manager does not implement all required Interfaces")
		scene_manager.win()
