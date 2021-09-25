extends "res://Alien.gd"
signal game_over
func get_texture_size() -> Vector2:
	return $Sprite.texture.get_size()
	
func _physics_process(delta):
	position.y += 300.0 * delta


func _on_VisibilityNotifier2D_screen_exited():
	if not was_hit:
		emit_signal("game_over")
