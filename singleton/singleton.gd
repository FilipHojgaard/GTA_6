extends Node

@onready var key: Area2D = $key

var inventory = {
	"cup" = false,
	"key" = false,
	"flashlight" = false
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("singleton")
	#key.visible = false
