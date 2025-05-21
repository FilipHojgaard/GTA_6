extends Area2D


func _ready() -> void:
	connect("input_event", _on_input_event)
	input_pickable = true

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		var resource = preload("res://assets/dialogue/atrium_about.dialogue")
		DialogueManager.show_example_dialogue_balloon(resource)
