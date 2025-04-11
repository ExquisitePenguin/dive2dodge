extends StaticBody2D

@onready var bird = self

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bird.position.x = 500
	bird.position.y = 1500


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	bird.position.y -= 500 * delta
