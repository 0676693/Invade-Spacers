extends Control


func _ready():
	set_process(true)

func _process(delta):
	if Input.is_action_just_pressed("DismissTutorial"):
		get_tree().change_scene("res://MainGame/MainGame.tscn")
