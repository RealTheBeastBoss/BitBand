extends Control

func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/solo_create_character.tscn")

func _on_load_game_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/solo_load_game.tscn")

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/title_screen.tscn")
