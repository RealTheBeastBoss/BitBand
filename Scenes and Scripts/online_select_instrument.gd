extends Control

var selected_instrument = null # This will hold the instrument to be displayed
@onready var label = $Panel/Label3 # Just a taster of my ultimate power

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/online_create_character.tscn")

func _on_bass_pressed():
	selected_instrument = "Bass" # This is a string for now
	label.text = selected_instrument

func _on_drums_pressed():
	selected_instrument = "Drums" # This is a string for now
	label.text = selected_instrument

func _on_guitar_pressed():
	selected_instrument = "Guitar" # This is a string for now
	label.text = selected_instrument

func _on_keyboard_pressed():
	selected_instrument = "Keyboard" # This is a string for now
	label.text = selected_instrument

func _on_vocals_pressed():
	selected_instrument = "Vocals" # This is a str-- yes, I did just copy and paste this bit
	label.text = selected_instrument

func _on_select_pressed():
	# Set the player's instrument to be whatever was the selected one at the time
	# This will also start the Online Game
	pass
