extends Area2D

@export var current_value := 0

var base_sprite_pos: Vector2

func _ready():
	var sprite = get_parent().get_node("Sprite2D")
	base_sprite_pos = sprite.position
	update_visual()


# when clicked the vertical numbers will scroll up (0-1, 1-2, 2-3, etc)
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			increment()

func increment():
	current_value = (current_value + 1) % 10    # modulus wraps around to 0
	update_visual()

# move to next number
func update_visual():
	var sprite = get_parent().get_node("Sprite2D")
	var digit_height = sprite.texture.get_height() / 10.0
	sprite.position = base_sprite_pos + Vector2(0, -current_value * digit_height)
