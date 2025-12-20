extends Area2D
@onready var node_2d: Node2D = $"../.."
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	print("hi")
	print("gyft:")
	print("Parent:", get_parent())
	get_parent().visible = false
	print("Entered:", self)

	set_deferred("monitoring", false)
	set_deferred("monitorable", false)
	pass # Replace with function body.
