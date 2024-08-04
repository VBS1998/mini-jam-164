class_name WorldEnvManager extends WorldEnvironment

var env : Environment
var cam_atts : CameraAttributesPractical

# Called when the node enters the scene tree for the first time.
func _ready():
	assert(camera_attributes is CameraAttributesPractical, "Camera Atributtes should be practical")
	
	env = environment
	cam_atts = camera_attributes as CameraAttributesPractical


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func intensify_fog(intensity:float):
	const MAX_BRIGHTNESS = 1.0
	const MIN_BRIGHTNESS = 0.05
	
	var fog_brightness : float	
	fog_brightness = clamp(intensity, MIN_BRIGHTNESS, MAX_BRIGHTNESS)
	
	var fog_color = env.fog_light_color
	fog_color = fog_color.clamp(Color(0,0,0,0), Color(fog_brightness, fog_brightness, fog_brightness, fog_brightness))
	
	env.fog_light_color = fog_color
	env.fog_density = 1.0 - intensity

func intensify_skybox(intensity:float):
	pass

func intensify(intensity:float):
	intensify_fog(1-intensity)
	intensify_skybox(1-intensity)
