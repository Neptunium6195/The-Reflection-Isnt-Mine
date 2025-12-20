extends Label

# Define the normal and hovered alpha values
const NORMAL_ALPHA = 0.5
const HOVER_ALPHA = 1.0

func _ready():
	# Ensure the initial opacity is set
	self_modulate.a = NORMAL_ALPHA

func _on_mouse_entered():
	# Change opacity to HOVER_ALPHA (fully opaque)
	self_modulate.a = HOVER_ALPHA

func _on_mouse_exited():
	# Change opacity back to NORMAL_ALPHA (semi-transparent)
	self_modulate.a = NORMAL_ALPHA
