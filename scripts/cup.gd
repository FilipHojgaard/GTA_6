extends Area2D

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _ready() -> void:
	connect("input_event", _on_input_event)
	input_pickable = true

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		Singleton.inventory["cup"] = true
		visible = false
		
		audio_stream_player_2d.play()
		var resource = preload("res://assets/dialogue/drink.dialogue")
		DialogueManager.show_example_dialogue_balloon(resource)
