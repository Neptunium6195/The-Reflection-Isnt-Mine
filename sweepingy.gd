extends Node2D
var dustLeft = 38

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dustLeft == 0:
		await get_tree().create_timer(1.0).timeout		
		get_tree().change_scene_to_file("res://day1ab.tscn")
		
		
	pass
