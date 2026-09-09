extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.win.connect(open_win_condition)
	visible = false
	
func _on_exit_button_pressed() -> void:
	get_tree().quit()


	
func open_win_condition(_is_win: bool):
	print("hi")
	visible = true
	
	
