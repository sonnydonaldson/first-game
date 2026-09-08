extends Control
@onready var scorelabel: Label = $cointexture/scorelabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.score_updated.connect(update_score)

func update_score(score):
	scorelabel.text = str(score)
