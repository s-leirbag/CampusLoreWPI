extends Control


@onready var titleImg := $TitleImg
@onready var titleLabel := $TitleImg/Title
@onready var infoLabel := $VBox/InfoImg/Info


func init(id: String) -> void:
	visible = true
	titleImg.visible = true
	infoLabel.scale = Vector2(7, 7)
	titleLabel.text = Globals.INFO[id]["title"]
	infoLabel.text = Globals.INFO[id]["info"]


func next(id: String) -> void:
	titleImg.visible = false
	infoLabel.scale = Vector2(4, 4)
	var options = Globals.INFO[id]["random"]
	infoLabel.text = options[randi() % options.size()]
