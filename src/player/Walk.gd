extends State

var tween : Tween

func physics_update(_delta: float) -> void:
	if owner.getMoveDir() == Vector2.ZERO:
		state_machine.transition_to("Idle")
	
	if owner.getMoveDir() != owner.dir:
		owner.dir = owner.getMoveDir()
		owner.animPlayer.play("walk_" + Utils.dirToDirName(owner.dir))
		
	owner.velocity = owner.dir * owner.speed * _delta
	var collision : KinematicCollision2D = owner.move_and_collide(owner.velocity)
	if collision:
		state_machine.transition_to("Idle")

func enter(_msg: Dictionary = {}) -> void:
	owner.animPlayer.play("walk_" + Utils.dirToDirName(owner.dir))

func exit() -> void:
	owner.animPlayer.stop()
