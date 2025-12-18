extends CharacterBody2D

@export var movement_speed: float = 500.0
var character_direction: Vector2
@onready var sprite: AnimatedSprite2D = $sprite

func _physics_process(delta: float) -> void:
	character_direction.x = Input.get_axis("move_left", "move_right")
	character_direction.y = Input.get_axis("move_up", "move_down")

	if character_direction.x < 0:
		sprite.flip_h = false
	elif character_direction.x > 0:
		sprite.flip_h = true

	if character_direction:
		velocity = character_direction * movement_speed
		if sprite.animation != "CharlesSide":
			sprite.animation = "CharlesSide"
	else:
		velocity = velocity.move_toward(Vector2.ZERO, movement_speed)
		if sprite.animation != "CharlesFront":
			sprite.animation = "CharlesFront"

	move_and_slide()
