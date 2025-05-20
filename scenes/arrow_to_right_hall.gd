extends Area2D

# Specify the path to the scene you want to load
#var simultaneous_scene = preload("res://scenes/auditorium.tscn").instantiate()

func _ready():
	# Connect the input event signal
	connect("input_event", _on_input_event)

func _on_input_event(_viewport, event, _shape_idx):
	# Check if the event is a mouse click
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		# Change to the target scene
		print("clicked right arrow")
		get_tree().change_scene_to_file("res://scenes/auditorium.tscn")
