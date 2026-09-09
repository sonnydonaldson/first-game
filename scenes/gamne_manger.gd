extends Node
var score = 41
var open_win_condition = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.coin_collected.connect(increase_score)


func increase_score():
	score += 1 
	print(score)
	EventBus.score_updated.emit(score)
	if score == 42:
		open_win_condition = true
		EventBus.win.emit(open_win_condition)
	
	
