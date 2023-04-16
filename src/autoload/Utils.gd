extends Node

func dirToDirName(dir: Vector2) -> String:
	match (dir):
		Vector2.UP:
			return "up"
		Vector2.LEFT:
			return "left"
		Vector2.RIGHT:
			return "right"
		Vector2.DOWN:
			return "down"
		_:
			return "BAD INPUT"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
