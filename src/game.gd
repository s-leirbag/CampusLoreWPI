extends Node2D

@onready var scene := $Scene1


# Called when the node enters the scene tree for the first time.
func _ready():
	Events.connect("scene_changed", _on_scene_changed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_scene_changed(newScene) -> void:
	scene.queue_free()
	
	scene = newScene.instantiate()
	add_child(scene)
	move_child(scene, 0)
