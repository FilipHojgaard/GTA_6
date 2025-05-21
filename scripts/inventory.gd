extends Node2D

@onready var key: Area2D = $key
@onready var key_large: Area2D = $key_large
@onready var paper: Area2D = $paper

func _ready() -> void:
	print("klar")
	
func _process(delta):
	key.visible = Singleton.inventory["key"]
	paper.visible = Singleton.inventory["paper"]
