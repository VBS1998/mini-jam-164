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

static func class_implements(obj : Object, interfaces : Array[Object]):
	for interface in interfaces:
		for method in interface.get_script_method_list():
			return obj.get_script() and method in obj.get_script().get_script_method_list()
