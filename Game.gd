extends Node2D

var Swarm = preload("res://Swarm.tscn")


export var min_boss_delay:= 15.0
export var max_boss_delay:= 30.0
onready var boss_delay:= get_boss_delay()

func get_boss_delay() -> float:
	return min_boss_delay + (max_boss_delay - min_boss_delay) * randf()

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Swarm_game_over():
	get_tree().change_scene("res://GameOver.tscn")
	


func _on_Swarm_win(last_swarm):
	#get_tree().change_scene("res://GameWin.tscn")
	var swarm = Swarm.instance()
	swarm.connect("win", self, "_on_Swarm_win")
	swarm.speed = last_swarm.speed * 1.0
	add_child(swarm)
