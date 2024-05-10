extends Node2D

var selection = "Top"
@onready var instrument = $UI/Instrument
@onready var vinyl_selector = $VinylSelector

func _ready():
	set_vinyl_position()

func _process(delta):
	set_vinyl_position()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menus/online_create_character.tscn")

func _on_vinyl_selector_selection_changed(new_selection):
	selection = new_selection
	instrument.text = selection

func set_vinyl_position():
	var screen_size = get_viewport().get_visible_rect().size
	vinyl_selector.transform = Transform2D(0, Vector2(screen_size[0] / 2, screen_size[1]))
