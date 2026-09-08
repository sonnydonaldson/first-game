extends Control
@onready var scorelabel: Label = $cointexture/scorelabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func update_score(score):
	scorelabel.text = str(score)
