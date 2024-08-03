class_name Utils extends Object

static func get_scene_manager(node : Node) -> Node:
	return node.get_tree().get_root().get_node("SceneManager")

static func rangef(start: float, end: float, step: float):
	var res = Array()
	var i = start
	while i < end:
		res.push_back(i)
		i += step
	return res
