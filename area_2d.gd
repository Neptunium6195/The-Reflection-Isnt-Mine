extends Area2D
var placedCorrectly = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_entered(area: Area2D) -> void:
	var texture = load('res://Assets/book2.jpg')
	var label1 = get_node("../../label1")
	get_parent().texture = texture
	placedCorrectly += 1
	print(placedCorrectly)
	if placedCorrectly == 2:
		label1.visible = true
		await get_tree().create_timer(5000.0).timeout
		get_tree().change_scene_to_file("res://story.tscn")
		
		
	pass

	
