extends Node2D


func _ready() -> void:
	var resource = preload("res://assets/dialogue/suf_welcomes_you.dialogue")
	DialogueManager.show_example_dialogue_balloon(resource)
		
