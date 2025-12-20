extends Area2D
@onready var node_2d = get_tree().get_current_scene()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_entered(area: Area2D) -> void:
	get_parent().visible = false
	node_2d.stainLeft -= 1
	set_deferred("monitoring", false)
	set_deferred("monitorable", false)
	print(node_2d.stainLeft)
	pass # Replace with function body.
