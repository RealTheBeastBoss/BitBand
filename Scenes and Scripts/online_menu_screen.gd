extends Control

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/title_screen.tscn")

func _on_create_new_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/online_create_character.tscn")

func _on_load_game_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/online_load_game.tscn")

func _on_servers_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/online_servers_screen.tscn")
