extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var resource = preload("res://assets/dialogue/left_hall.dialogue")
	DialogueManager.show_example_dialogue_balloon(resource)
		
