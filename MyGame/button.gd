extends VBoxContainer

const WORLD = preload("res://test_world.tscn")

func _on_quit_button_pressed():
	get_tree().quit()


func _on_tree_exited() -> void:
	pass
	
