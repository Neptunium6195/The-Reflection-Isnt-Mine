extends Area2D
@onready var node_2d: Node2D = $"../.."
var can_move = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_parent().process_mode = Node.PROCESS_MODE_DISABLED
	Dialogic.timeline_ended.connect(_on_dialog_finished)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func start_dialog() -> void:
	Dialogic.start("res://Timelines/elliaCharlesMeet.dtl")

func _on_dialog_finished(_timeline_name: String) -> void:
	pass

func _on_area_entered(area: Area2D) -> void:
	get_parent().position = Vector2(170, 100)
	print("why")
	start_dialog()
	enable_script()
	pass # Replace with function body.
	
func enable_script():
	get_parent().process_mode = Node.PROCESS_MODE_INHERIT # Or PROCESS_MODE_ALWAYS, PROCESS_MODE_PAUSABLE
