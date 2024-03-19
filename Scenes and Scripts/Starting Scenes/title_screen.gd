extends Control

# The "Button" nodes will be converted into "TextureButton" nodes once we have the textures

func _on_quit_pressed():
	get_tree().quit() # This is the easiest bit of code I've every typed in my life

func _on_solo_pressed(): # The Code below allows one to change the scene currently being processed
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/solo_screen.tscn")

func _on_band_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/online_menu_screen.tscn")

func _on_settings_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/settings_screen.tscn")

func _on_help_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/tutorial.tscn")
