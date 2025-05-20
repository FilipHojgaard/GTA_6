extends Node2D

@onready var cup: Area2D = $"../cup"
@onready var key: Area2D = $key

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cup.cup_sig.connect(signal_function)
	print("klar")
	
func _process(delta):
	if Singleton.inventory["key"] == true:
		key.visible = true
		#print(key.visible)
	
func signal_function():
	print("signal worked - im from the control node")
	#key.visible = true
	
