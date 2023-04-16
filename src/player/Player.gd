class_name Player
extends CharacterBody2D

var speed := 150.0
var dir := Vector2.UP
var interact_areas_entered := 0

@onready var animPlayer := get_node("AnimationPlayer") as AnimationPlayer


func _ready() -> void:
	Events.connect("interact_area_entered", _on_interact_area_entered)
	Events.connect("interact_area_exited", _on_interact_area_exited)



func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("interact") and interact_areas_entered > 0:
		Events.emit_signal("scene_changed", Globals.Scene2)


func getMoveDir() -> Vector2:
	return Vector2(
		int(Input.is_action_pressed("right")) -int(Input.is_action_pressed("left")),
		int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))
	)


func _on_interact_area_entered(body):
	if body == self:
		interact_areas_entered += 1
		print("entered!")


func _on_interact_area_exited(body):
	if body == self:
		interact_areas_entered -= 1
		print("exited!")
