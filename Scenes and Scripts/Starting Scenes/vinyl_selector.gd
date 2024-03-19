extends Node2D

var did_click = false
var is_dragging = false
var click_position : Vector2 = Vector2.ZERO
var move_delta : Vector2 = Vector2.ZERO
@onready var vinyl = $Area2D/Vinyl

func _input(event: InputEvent):
	if event is InputEventMouseButton:
		if event.is_pressed():
			is_dragging = true
		else: 
			is_dragging = false
	if is_dragging and did_click:
		move_delta = click_position - event.position
	if Input.is_action_just_released("left_click"):
		did_click = false

func _physics_process(delta):
	if is_dragging and did_click:
		vinyl.rotation_degrees = -move_delta.x

func _on_vinyl_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("left_click"):
		did_click = true
		click_position = event.position
