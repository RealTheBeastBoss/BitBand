extends Control

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menus/online_menu_screen.tscn")

func _on_done_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menus/online_select_instrument.tscn")
