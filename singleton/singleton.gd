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
