extends Control

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/online_menu_screen.tscn")

func _on_done_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/online_select_instrument.tscn")
