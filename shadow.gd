extends Sprite2D

# Export speed to be editable in the Inspector
@export var speed: float = 200.0
# Define a velocity vector for the direction and speed
var velocity: Vector2 = Vector2(1, 0) # Moves right by default

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += velocity * speed * delta
	if position.x > get_tree().current_scene.size.x:
		position.x = 0
	pass
