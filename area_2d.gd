extends Area2D
@onready var books: Node2D = $"../.."
@onready var bookDrag: Node2D = $".."
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_entered(area: Area2D) -> void:
	var texture = load('res://Assets/book2.jpg')
	var label1 = get_node("../../label1")
	bookDrag.dragging = false
	get_parent().texture = texture
	books.placedCorrectly += 1
	print(books.placedCorrectly)
	
	pass

	
