extends KinematicBody2D

var speed = 1250

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.enemyBulletInstanceCount += 1
	set_physics_process(true)
	if GlobalVariables.Player == null:
		queue_free()


func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, +speed*delta*0.4))
	if (collidedObject):
		
		#if bullet collides with enemy, ignore it.
		if "Enemy" in collidedObject.collider.name:
			pass
		
			#collidedObject.get_collider().queue_free() #Don't kill the enemies.
		else:
			queue_free()
		
			#If a bullet collides with the player, set scene to loss screen,
			GlobalVariables.enemyBulletInstanceCount -= 1
			print("Enemy Bullets: ", GlobalVariables.enemyBulletInstanceCount)
			if "Player" in collidedObject.collider.name:
				get_tree().change_scene("res://Menu/Loss.tscn")
