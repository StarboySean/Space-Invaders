extends Area2D


export var speed = 250
export var good = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var size = $Sprite.texture.get_size()
	var view_rect = get_viewport_rect()
	position.y -= speed*delta
	

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Laser_body_entered(body):
	if body.good != good:
		body.hit()
		body.queue_free()
		queue_free()
