extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("sweeping")
	await Dialogic.timeline_ended
	Dialogic.start("day1aa")
	await Dialogic.timeline_ended
	Dialogic.start("day1b")
	await Dialogic.timeline_ended
	get_tree().change_scene_to_file("res://Mirror_cut_scene.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
