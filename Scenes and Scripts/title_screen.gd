extends Control

# The "Button" nodes will be converted into "TextureButton" nodes once we have the textures

func _on_quit_pressed():
	get_tree().quit()

func _on_solo_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/solo_screen.tscn")

func _on_band_pressed():
	pass

func _on_settings_pressed():
	pass

func _on_help_pressed():
	pass
