class_name Player
extends CharacterBody2D

var speed := 600.0
var dir := Vector2.UP
var interact_areas_entered := 0
var interact_id := ""

@onready var animPlayer := get_node("AnimationPlayer") as AnimationPlayer
@onready var dialogue := get_node("Dialogue") as Control


func _ready() -> void:
	Events.connect("interact_area_entered", _on_interact_area_entered)
	Events.connect("interact_area_exited", _on_interact_area_exited)


func welcome_anim():
	interact_id = 'welcome'
	$StateMachine.transition_to("Dialogue")


func getMoveDir() -> Vector2:
	return Vector2(
		int(Input.is_action_pressed("right")) -int(Input.is_action_pressed("left")),
		int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))
	)


func _on_interact_area_entered(body, id):
	if body == self:
		interact_id = id
		interact_areas_entered += 1


func _on_interact_area_exited(body, id):
	if body == self:
		interact_id = id
		interact_areas_entered -= 1


func setIsActive(newIsActive):
	set_physics_process(!newIsActive)
	$StateMachine.setIsActive(newIsActive)


func setFrame(frame):
	$Sprite2D.frame = frame
