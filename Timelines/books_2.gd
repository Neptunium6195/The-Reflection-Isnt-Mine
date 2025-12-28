extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("res://Timelines/bookPuzzle.dtl")
	await Dialogic.timeline_ended
	get_tree().change_scene_to_file("res://day45.tscn")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
