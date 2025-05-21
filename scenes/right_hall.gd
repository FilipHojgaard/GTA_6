extends Node2D


func _ready() -> void:
	print("dialogue start:")
	var resource = preload("res://assets/dialogue/right_hall_entered.dialogue")
	DialogueManager.show_example_dialogue_balloon(resource)
		
