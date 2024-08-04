class_name AudioManager extends Node

const MAX_VOLUME = 0.0
const MIN_VOLUME = -80.0

var forest_sound : AudioStreamPlayer
var creepy_sound : AudioStreamPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	forest_sound = $AudioStreamPlayerForestSound
	creepy_sound = $AudioStreamPlayerCreepySound
	
	forest_sound.volume_db = MAX_VOLUME
	creepy_sound.volume_db = MIN_VOLUME
	
	forest_sound.play()
	creepy_sound.play()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func intensify(intensity : float):
	forest_sound.volume_db = MIN_VOLUME*intensity + (1 - intensity) * MAX_VOLUME
	creepy_sound.volume_db = MIN_VOLUME*(1 - intensity) + intensity * MAX_VOLUME
