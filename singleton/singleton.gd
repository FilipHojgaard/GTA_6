extends Node

@onready var key: Area2D = $key

var intro_played = false

var inventory = {
	"cup" = false,
	"key" = false,
	"flashlight" = false
}

func invoke_intro_played():
	intro_played = true
	get_tree().change_scene_to_file("res://scenes/game.tscn")
