extends Node2D

var did_click = false
var is_dragging = false
var click_position : Vector2 = Vector2.ZERO
var move_delta : Vector2 = Vector2.ZERO
var selection = "Top"
var last_rotation = 0

signal selection_changed(new_selection)

@onready var vinyl = $Area2D/Vinyl

func _input(event: InputEvent):
	if event is InputEventMouseButton:
		if event.is_pressed():
			is_dragging = true
		else: 
			is_dragging = false
	if is_dragging and did_click:
		move_delta = click_position - event.position
		vinyl.rotation_degrees = last_rotation - move_delta.x
		# Gets the Rotation of the Vinyl within 360:
		var degrees = vinyl.rotation_degrees
		while degrees > 360:
			degrees -= 360
		while degrees < 0:
			degrees += 360
		# Gets the current selection:
		var new_selection = null
		if degrees > 315 or degrees < 45:
			new_selection = "Top"
		elif degrees > 225:
			new_selection = "Right"
		elif degrees > 135:
			new_selection = "Bottom"
		else:
			new_selection = "Left"
		if new_selection != selection:
			selection = new_selection
			selection_changed.emit(selection)
	if Input.is_action_just_released("left_click"):
		did_click = false
		last_rotation = vinyl.rotation_degrees

func _on_vinyl_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("left_click"):
		did_click = true
		click_position = event.position
