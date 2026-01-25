extends Node2D

@export var correct_code := [0, 9, 2, 6]


# getter method?
func get_entered_code() -> Array:
	var current_code := []
	for dial_node in get_children():
		for child in dial_node.get_children():
			if child is LockDial:
				current_code.append(child.current_value)
	return current_code

func check_code():
	if get_entered_code() == correct_code:
		var next_scene = load("res://lock-open.tscn") as PackedScene
		get_tree().change_scene_to_packed(next_scene)
