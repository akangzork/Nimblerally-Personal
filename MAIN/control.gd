extends Node

var UseMouseSteering: bool = false
var UseAccelerometer: bool = false

var clutch_input: float = 0.0
var gas_input: float = 0.0
var brake_input: float = 0.0
var shiftup_input: float = 0.0
var shiftdown_input: float = 0.0
var handbrake_input: float = 0.0
var steer_input: float = 0.0
#var left_input: float = 0.0
#var right_input: float = 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# pass
	# clutch_input = 
	# based on UI
	if UseMouseSteering:
		var mouse_position = get_viewport().get_mouse_position() 
		mouse_position.x = get_viewport().get_mouse_position().x
	elif UseAccelerometer:
		var accelerationRate = Input.get_accelerometer()
	
	else: 
		pass 
		
func _input(event: InputEvent): 
	if UseMouseSteering:
		pass
	elif UseAccelerometer:
		# steer_input = event.get
		pass
		
	else:
		gas_input = event.get_action_strength("gas")
		brake_input = event.get_action_strength("brake")
		shiftup_input = event.get_action_strength("shiftup")
		shiftdown_input = event.get_action_strength("shiftdown")
		handbrake_input = event.get_action_strength("handbrake")
		steer_input = event.get_action_strength("left") - event.get_action_strength("right")
		clutch_input = event.get_action_strength("clutch")


