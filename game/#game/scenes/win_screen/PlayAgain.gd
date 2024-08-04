extends Button

func _ready():
	if not pressed.is_connected(self._button_pressed):
		pressed.connect(self._button_pressed)

func _button_pressed():
	Utils.get_scene_manager(self).start_button_pressed()
	
