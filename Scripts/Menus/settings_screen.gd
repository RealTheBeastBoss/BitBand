extends Control

@onready var fullscreen = $Fullscreen

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menus/title_screen.tscn")

func _on_fullscreen_pressed():
	if fullscreen.button_pressed:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
