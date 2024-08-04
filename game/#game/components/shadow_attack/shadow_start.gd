extends CharacterBody3D

@export var nav_region : NavigationRegion3D
@export var player : CharacterFpc

@export var enemy_manager : EnemyManager

func _ready():
	var attack = find_child("ShadowAttack")
	attack.nav_region = nav_region
	attack.player = player

func kill():
	if enemy_manager:
		enemy_manager.on_enemy_killed()
	queue_free()
	

