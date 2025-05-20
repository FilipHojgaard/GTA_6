extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("dialogue start:")
	var resource = preload("res://assets/dialogue/intro.dialogue")
	DialogueManager.show_example_dialogue_balloon(resource)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
