extends KinematicBody2D

var movement_speed = 400 
var bulletSource = preload("res://Bullet/Bullet.tscn")
var shrinktimer = Timer.new()
var dashtimer = Timer.new()
var Health = 3

func _ready():
	set_process(true)
	set_physics_process(true)
	shrinktimer.set_wait_time(4)
	dashtimer.set_wait_time(0.1)
	shrinktimer.set_one_shot(true)
	dashtimer.set_one_shot(true)
	self.add_child(shrinktimer)
	self.add_child(dashtimer)
	GlobalVariables.Player = self

func _process(delta):
	if GlobalVariables.automaticFiring:
		if Input.is_action_pressed("fire"):
			if GlobalVariables.bulletInstanceCount < 60:
				var bulletInstance = bulletSource.instance()
				bulletInstance.position = Vector2(position.x, position.y-20)
				get_tree().get_root().add_child(bulletInstance)
				yield()	
	#Shrinking Mechanic. If C/Right click pressed, scale the player size to 0.3
	if Input.is_action_pressed("shrink"):
		self.scale = Vector2(0.3, 0.3)
		GlobalVariables.playerSize = scale
		shrinktimer.start()
		#After 7 seconds have passed, revert payer back to size 1.
		yield(shrinktimer, "timeout")
		self.scale = Vector2(1,1)
		GlobalVariables.playerSize = scale
		
	elif Input.is_action_pressed("dash"):
		movement_speed = 900
		dashtimer.start()
		yield(dashtimer, "timeout")
		movement_speed = 400
			
	elif Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 3:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)
				
#Player movement. Press left, go left. Press right, go right etc.
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		if position.x > 10:
			move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		if position.x < 1280:
			move_and_collide(Vector2(movement_speed * delta, 0))
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2(0, -movement_speed * delta))
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2(0, movement_speed * delta))

#Player damage made so that if you get hit, reduce health by 1. If your health is 0, you die.
func reduceHealth():
	Health -= 1
	if Health == 0:
		GlobalVariables.Player = null
		get_tree().change_scene("res://Menu/Loss.tscn")


func _on_ScaleTimer_timeout():
	self.scale = Vector2(1,1)
	pass # Replace with function body.
