extends Node2D

var Swarm = preload("res://Swarm.tscn")




	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Swarm_game_over():
	get_tree().change_scene("res://GameOver.tscn")
	


func _on_Swarm_win(last_swarm):
	#get_tree().change_scene("res://GameWin.tscn")
	var swarm = Swarm.instance()
	swarm.speed = last_swarm.speed * 1.5
	add_child(swarm)
