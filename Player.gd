extends KinematicBody

var run_speed : float = 10
var time : float = 0.0
var step_freq : float = 2.0
var step_height : float = 0.2
var step_tillt : float = 8.0

onready var body_Hinge =$bodyHinge
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
 
func _physics_process(delta):
	body_Hinge.translation.y = step_height * (1 + sin(2.0 * PI * step_freq * time))
	body_Hinge.rotation_degrees.z = step_tillt * sin(PI * step_freq * time)
	time += delta
	move_and_slide(Vector3(0,0, -run_speed))
