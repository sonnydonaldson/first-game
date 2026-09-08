extends Node
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.coin_collected.connect(increase_score)

func increase_score():
	score += 1 
	print(score)
	EventBus.score_updated.emit(score)
	
