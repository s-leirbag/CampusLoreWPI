extends Node2D

@onready var scene := $SceneQuad
@onready var player := $Player

var tween: Tween

func _ready():
	Events.connect("scene_changed", _on_scene_changed)
	
	$AnimationPlayer.play("where_we_dropping")
#	player.welcome_anim()
#	player.position = Vector2(2350, 2080)
#	player.visible = true
#	player.setIsActive(true)


func _free_anim_nodes():
	$Plane.queue_free()
	$CrashSound.queue_free()


func _on_scene_changed(newScene) -> void:
	scene.queue_free()
	
	scene = newScene.instantiate()
	add_child(scene)
	move_child(scene, 0)


func _on_music_intro_finished():
	$Music.play()


func _on_music_finished():
	$Music.play()
