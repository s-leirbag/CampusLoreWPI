# Generic state machine. Initializes states and delegates engine callbacks
# (_physics_process, _unhandled_input) to the active state.
class_name StateMachine
extends Node

# Emitted when transitioning to a new state.
signal transitioned(state_name)

@export var initial_state := NodePath()

var state: State

var isActive: bool : set = setIsActive

func on_owner_ready() -> void:
	isActive = true
	for child in get_children():
		child.state_machine = self
	state = get_node(initial_state)
	state.enter()


func _unhandled_input(event: InputEvent) -> void:
	if not isActive:
		return
	state.handle_input(event)


func _process(delta: float) -> void:
	if not isActive:
		return
	state.update(delta)


func _physics_process(delta: float) -> void:
	if not isActive:
		return
	state.physics_update(delta)


func transition_to(target_state_name: String, msg: Dictionary = {}) -> void:
	if not isActive:
		return
	
	if not has_node(target_state_name):
		return

	state.exit()
	state = get_node(target_state_name)
	state.enter(msg)
	emit_signal("transitioned", state.name)


func setIsActive(newIsActive):
	isActive = newIsActive
