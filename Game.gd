extends Node2D

var Invader = load("res://Alien.tscn")




	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Swarm_game_over():
	get_tree().change_scene("res://GameOver.tscn")
