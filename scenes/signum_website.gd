extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var resource = preload("res://assets/dialogue/signum_website.dialogue")
	DialogueManager.show_example_dialogue_balloon(resource)
		
