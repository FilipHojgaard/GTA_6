extends Area2D

var knocking_count = 0

func _ready():
	connect("input_event", _on_input_event)

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if Singleton.inventory["key"] == true:
			var resource = preload("res://assets/dialogue/door_push_door.dialogue")
			DialogueManager.show_example_dialogue_balloon(resource)
			get_tree().change_scene_to_file("res://scenes/winning_scene.tscn")
		elif knocking_count == 3:
			var resource = preload("res://assets/dialogue/door_push_door.dialogue")
			DialogueManager.show_example_dialogue_balloon(resource)
			get_tree().change_scene_to_file("res://scenes/winning_scene.tscn")
		else:
			knocking_count += 1
			var resource = preload("res://assets/dialogue/door_locked.dialogue")
			DialogueManager.show_example_dialogue_balloon(resource)
