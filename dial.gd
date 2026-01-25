extends Area2D

class_name LockDial

@export var lock_node: Node

var base_sprite_pos: Vector2
var current_value := 0

var clicks = 0

func _ready():
	var sprite = get_parent().get_node("Sprite2D")
	base_sprite_pos = sprite.position
	update_visual()

func get_lock_node() -> Node:
	var node = self
	while node:
		if node.name == "lock":   
			return node
		node = node.get_parent()
	return null

# when clicked the vertical numbers will scroll up (0-1, 1-2, 2-3, etc)
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			increment()

func increment():
	current_value = (current_value + 1) % 10    # modulus wraps around to 0
	update_visual()
	var lock = get_lock_node()
	if lock:
		lock.check_code()

# move to next number
func update_visual():
	var sprite = get_parent().get_node("Sprite2D")
	var digit_height = sprite.texture.get_height() / 10.0
	sprite.position = base_sprite_pos + Vector2(0, -current_value * digit_height)
