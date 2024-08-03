extends Button

func _ready():
	pressed.connect(self._button_pressed)


func _button_pressed():
	Utils.get_scene_manager(self).start_button_pressed()
	
