extends State

func enter(_msg := {}) -> void:
	owner.animPlayer.stop()

func physics_update(_delta: float) -> void:
	if not owner.getMoveDir() == Vector2.ZERO:
		owner.dir = owner.getMoveDir()
		state_machine.transition_to("Walk")
