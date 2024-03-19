extends Control

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/solo_screen.tscn")

func _on_done_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/solo_select_instrument.tscn")
