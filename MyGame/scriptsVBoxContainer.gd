extends VBoxContainer

const WORLD = preload("res://test_world.tscn")


func _on_new_game_button_pressed():
	get_tree().change_scene_to_packed(WORLD)


func _on_quit_button_pressed():
	get_tree().quit()
