extends Area2D

@onready var bird = self

func _ready() -> void:
	bird.position.x = 400
	bird.position.y = 1200

func _process(delta: float) -> void:
	bird.position.y -= 500 * delta

func bird_speed():
	pass

func respawn_bird(speed: int):
	pass
