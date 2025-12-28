extends Node2D

func _ready() -> void:
	print("placeholder")
	Dialogic.start("res://Timelines/intro.dtl")
	await Dialogic.timeline_ended
	print("intro done")
	Dialogic.start("res://Timelines/day1a.dtl")
	await Dialogic.timeline_ended
	print("day1a done")
	get_tree().change_scene_to_file("res://sweeping.tscn")
