extends Area2D
@onready var node_2d: Node2D = $"../.."
var can_move = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func _on_area_entered(area: Area2D) -> void:
	var charles = get_parent()
	charles.position = Vector2(-1500, -900)
	charles.can_move = true
	print("why")
	Dialogic.start("elliaCharlesMeet")
	await Dialogic.timeline_ended
	pass # Replace with function body.
		 # freeze movement
	
