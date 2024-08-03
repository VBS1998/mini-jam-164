class_name Utils extends Object

static func get_scene_manager(node : Node) -> Node:
	return node.get_tree().get_root().get_node("SceneManager")
