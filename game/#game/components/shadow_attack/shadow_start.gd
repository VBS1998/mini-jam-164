extends CharacterBody3D

@export var nav_region : NavigationRegion3D
@export var player : CharacterFpc

func _ready():
	var attack = find_child("ShadowAttack")
	attack.nav_region = nav_region
	attack.player = player

func kill():
	queue_free()
	

