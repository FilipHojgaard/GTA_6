extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Singleton.intro_played == true:
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Singleton.intro_played == true:
		queue_free()
