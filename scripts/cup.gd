extends Area2D

signal cup_sig

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("starting cup")
	connect("input_event", _on_input_event)
	input_pickable = true


func _on_something_happened():
	cup_sig.emit()
	print("signal emitted")
	
func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		Singleton.inventory["key"] = true
		visible = false
		_on_something_happened()
		#print("clicked")
		#visible=false
