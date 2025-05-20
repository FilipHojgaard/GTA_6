extends Node2D

@onready var cup: Area2D = $"../cup"

var inventory = {
	"keys" = false,
	"flashlight" = false
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cup.cup_sig.connect(signal_function)
	print("klar")

func signal_function():
	print("signal worked - im from the control node")
