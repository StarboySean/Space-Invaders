extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed: = 100.0
var vector: = Vector2()
export var down_time = 1.0
var down_remaining = 0.0
var direction = 1.0
# Called when the node enters the scene tree for the first time.
func _ready():
	vector.x = speed 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += vector*delta
	if down_remaining > 0:
		down_remaining -= delta
	else:
		vector.x = speed*direction
		vector.y = 0.0


func _on_Right_screen_exited():
	reverse()
	
func reverse():
	vector.y = speed
	vector.x = 0.0
	down_remaining = down_time
	direction *= -1.0


func _on_Left_screen_exited():
	reverse()
