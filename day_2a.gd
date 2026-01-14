extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("day2a")
	await Dialogic.timeline_ended
	Dialogic.start("day2b")
	await Dialogic.timeline_ended
	print("day2c")
	Dialogic.start("day2c")
	await Dialogic.timeline_ended
	print("day2d")
	Dialogic.start("day2d")
	await Dialogic.timeline_ended
	print("day2e")
	Dialogic.start("day2e")
	await Dialogic.timeline_ended
	Dialogic.start("day3a")
	await Dialogic.timeline_ended
	Dialogic.start("day3b")
	await Dialogic.timeline_ended
	get_tree().change_scene_to_file("res://day4.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
