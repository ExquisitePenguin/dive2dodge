extends CharacterBody2D

@onready var player = $".."

const SPEED = 1150.0

func _ready() -> void:
	player.position.y += 490

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()


func _on_area_2d_area_entered(collider: Area2D) -> void:
	if collider.is_in_group("Bird"):
		Bird.respawn_bird(1)
