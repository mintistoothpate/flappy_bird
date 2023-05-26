extends Control



# Called when the node enters the scene tree for the first time.
func _ready():
	$GameOver.hide()
	pass # Replace with function body.



func _on_game_start_pressed():
	$GameOver.hide()
	$GameStart.hide()
	get_tree().reload_current_scene()
	get_tree().paused = false
	
	


func _on_detect_body_entered(body):
	if body.name == 'Walls':
		$GameStart.show()
		$GameOver.show()
		
	if body.name == 'Background':
		$GameStart.show()
		$GameOver.show()
