extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("day4c")
	await Dialogic.timeline_ended
	Dialogic.start("day4d")
	await Dialogic.timeline_ended
	Dialogic.start("day5a")
	await Dialogic.timeline_ended
	var endBool = Dialogic.VAR.portalEnding
	if endBool == true:
		get_tree().change_scene_to_file("res://node_2d.tscn")
	else:
		get_tree().change_scene_to_file("res://end.tscn")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
