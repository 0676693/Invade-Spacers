extends KinematicBody2D

var movement_speed = 400 
var bulletSource = preload("res://Bullet/Bullet.tscn")
var timer = Timer.new()

func _ready():
	set_process(true)
	set_physics_process(true)
	timer.set_wait_time(5)
	timer.set_one_shot(true)
	self.add_child(timer)

func _process(delta):
	if GlobalVariables.automaticFiring:
		if Input.is_action_pressed("fire"):
			if GlobalVariables.bulletInstanceCount < 60:
				var bulletInstance = bulletSource.instance()
				bulletInstance.position = Vector2(position.x, position.y-20)
				get_tree().get_root().add_child(bulletInstance)
				yield()	
	if Input.is_action_pressed("shrink"):
		self.scale = Vector2(0.3, 0.3)
		GlobalVariables.playerSize = scale
		timer.start()
		yield(timer, "timeout")
		self.scale = Vector2(1,1)
		GlobalVariables.playerSize = scale

	elif Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 3:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)
				
		
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





func _on_ScaleTimer_timeout():
	self.scale = Vector2(1,1)
	pass # Replace with function body.
