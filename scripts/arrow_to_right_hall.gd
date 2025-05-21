extends Area2D

func _ready():
	connect("input_event", _on_input_event)

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("clicked right arrow")
		get_tree().change_scene_to_file("res://scenes/right_hall.tscn")
