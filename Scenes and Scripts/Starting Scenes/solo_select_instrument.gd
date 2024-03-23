extends Node2D

var selection = "Top"
@onready var instrument = $Instrument

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes and Scripts/Starting Scenes/solo_create_character.tscn")

func _on_vinyl_selector_selection_changed(new_selection):
	selection = new_selection
	instrument.text = selection
