extends Node2D

const Powerup = preload("res://MainGame/Powerup.tscn")
onready var timer_started = false

func _ready():
	pass 
	
	
func _process(delta):
	if timer_started == false:
		$PowerupSpawnRate.wait_time = rand_range(2.0, 3.0)
		$PowerupSpawnRate.start()
		timer_started = true

func on_PowerupSpawnRate_timeout():
	randomize()
	var aPow = Powerup.instance()
	var aPos = Vector2() 
	aPos.x = rand_range(aPow.spriteSize - 150, get_viewport().get_visible_rect().size.x - aPow.spriteSize + 50)
	aPos.y = 0 -aPow.spriteSize - 400
	aPow.position = aPos
	$Container.add_child(aPow)
	$powTimer.wait_time = rand_range(0.5, 2.0)
	$powTimer.start()
	
	#up to 11:44 in tutorial
