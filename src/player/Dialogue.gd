extends State

var is_last_dialogue : bool


func enter(_msg := {}) -> void:
	is_last_dialogue = false
	owner.dialogue.init(owner.interact_id)
	owner.animPlayer.stop()
	owner.set_physics_process(false)


func physics_update(_delta: float) -> void:
	if Input.is_action_just_pressed("interact"):
		if not is_last_dialogue:
			owner.dialogue.next(owner.interact_id)
			is_last_dialogue = true;
		else:
			state_machine.transition_to("Idle")


func exit() -> void:
	owner.set_physics_process(true)
	owner.dialogue.visible = false
