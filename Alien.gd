extends KinematicBody2D


var was_hit := false
var good = -1

func hit():
	was_hit = true
