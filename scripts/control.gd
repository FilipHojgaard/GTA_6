extends Node2D

@onready var key: Area2D = $key

func _ready() -> void:
	print("klar")
	
func _process(delta):
	key.visible = Singleton.inventory["key"]
	
