extends Node2D
var placedCorrectly = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.timeline_ended.connect(_on_dialog_finished)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if placedCorrectly == 4:
		start_dialog()

func start_dialog() -> void:
	Dialogic.start("res://Timelines/bookPuzzle.dtl")
	await Dialogic.timeline_ended
	get_tree().change_scene_to_file("res://story.tscn")
	Dialogic.start("res://Timelines/day1b.dtl")

func _on_dialog_finished(_timeline_name: String) -> void:
	pass
