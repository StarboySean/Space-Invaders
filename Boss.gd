extends "res://Alien.gd"

func get_texture_size() -> Vector2:
	return $Sprite.texture.get_size()
	
func _physics_process(delta):
	position.y += 300.0 * delta
