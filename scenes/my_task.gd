extends Node2D

func _ready() -> void:
	var resource = preload("res://assets/dialogue/my_task.dialogue")
	DialogueManager.show_example_dialogue_balloon(resource)
		
