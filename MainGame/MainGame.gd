extends Control

export (int) var countdownMax
var currentTimer 
var currentLevel = 1

func _ready():
	set_process(true)
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	
	#Player death changing the scene to the loss screen.
	while currentTimer > 0:
		yield(get_tree().create_timer(1,0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over, noob")
	get_tree().change_scene("res://Menu/Loss.tscn")
	
func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if get_tree().get_nodes_in_group("enemy").size() == 0:
		get_tree().change_scene("res://Menu/Level2.tscn")
		queue_free()
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if get_tree().get_nodes_in_group("enemy2").size() == 0 and currentLevel == 2:
		get_tree().change_scene("res://Menu/WinScene.tscn")
	if get_tree().get_current_scene().get_name() == "Level2":
		var currentLevel = 2

