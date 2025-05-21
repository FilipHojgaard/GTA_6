extends Node

@onready var key: Area2D = $key

var intro_played = false
var task_played = false
var right_hall_played = false
var left_hall_played = false

var inventory = {
	"cup" = false,
	"key" = false,
	"paper" = false
}

func invoke_intro_played():
	intro_played = true
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func invoke_task_played():
	task_played = true

func invoke_right_hall_played():
	right_hall_played = true

func invoke_left_hall_played():
	left_hall_played = true
