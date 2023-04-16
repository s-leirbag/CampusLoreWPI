extends State

func enter(_msg := {}) -> void:
	owner.animPlayer.stop()

func physics_update(_delta: float) -> void:
	if not owner.getMoveDir() == Vector2.ZERO:
		owner.dir = owner.getMoveDir()
		state_machine.transition_to("Walk")
	
	if Input.is_action_just_pressed("interact") and owner.interact_areas_entered > 0:
		state_machine.transition_to("Dialogue")
