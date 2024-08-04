class_name MoonManager extends Node3D

func intensify(intensity: float):
	var moon_mesh : MeshInstance3D = find_child("Moon") as MeshInstance3D
	var darkening : MeshInstance3D = moon_mesh.find_child("Darkening") as MeshInstance3D
	
	darkening.position.x = (1 - intensity) * (moon_mesh.position.x + (darkening.scale.x * 2))
