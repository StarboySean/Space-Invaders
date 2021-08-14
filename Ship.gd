extends Node2D

var Laser = load("res://Laser.tscn")
var speed = 100
var good = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	var size = $Sprite.texture.get_size()
	var view_rect = get_viewport_rect()
	position.x = view_rect.size.x * 0.5
	position.y = view_rect.size.y - size.y * 0.5 * $Sprite.scale.y
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var parent = get_parent()
	var scale = $Sprite.scale
	var size = $Sprite.texture.get_size()
	var view_rect = get_viewport_rect()
	if Input.is_action_pressed("input_left") and position.x > size.x * scale.x * 0.5:
		position.x -= speed * delta
	if Input.is_action_pressed("input_right") and position.x < view_rect.size.x - size.x * scale.x * 0.5:
		position.x += speed * delta
	if Input.is_action_just_pressed("fire"):
		var laser = Laser.instance()
		laser.position = position
		parent.add_child(laser)
		
