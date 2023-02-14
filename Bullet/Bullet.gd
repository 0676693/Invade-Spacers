extends KinematicBody2D

var speed = 900



# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.bulletInstanceCount += 1
	set_physics_process(true)

func _physics_process(delta):
	var colliidedObject = move_and_collide(Vector2(0, -speed*delta))
	if (colliidedObject):
		if "Enemy" in colliidedObject.collider.name:
			colliidedObject.get_collider().queue_free()
		queue_free()
		GlobalVariables.bulletInstanceCount -= 1
