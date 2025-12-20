extends Area2D
@onready var node_2d: Node2D = $"../.."
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_entered(area: Area2D) -> void:
	node_2d.dustLeft -= 1
	get_parent().visible = false
	set_deferred("monitoring", false)
	set_deferred("monitorable", false)
	print(node_2d.dustLeft)
	pass
