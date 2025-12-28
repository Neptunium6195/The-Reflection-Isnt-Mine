extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var _timeline_finished := false

func _on_dialogic_event(event_name: String, value) -> void:
	if event_name == "timeline_end":
		_timeline_finished = true

func play_timeline(path: String) -> void:
	_timeline_finished = false

	Dialogic.signal_event.connect(_on_dialogic_event, CONNECT_ONE_SHOT)
	Dialogic.start(path)

	while not _timeline_finished:
		await get_tree().process_frame

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://placeholder.tscn")
	print("pressed")
	
