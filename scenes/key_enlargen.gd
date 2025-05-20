extends Area2D

var paper_scene = preload("res://scenes/paper_zoomed_in.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("input_event", _on_input_event)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("trying to enllargen")
		var paper_instance = paper_scene.instantiate()
		add_child(paper_instance)
