extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	$VBoxContainer.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_detect_body_entered(body):
	if body.name == 'Walls':
		$VBoxContainer.show()
		
	if body.name == 'Background':
		$VBoxContainer.show()


func _on_restart_pressed():
	get_tree().reload_current_scene()



func _on_quit_pressed():
	get_tree().pause = false
	get_tree().guit()
