extends CheckButton

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func on_automaticFiring_pressed():
	GlobalVariables.automaticFiring = pressed
	print(pressed)
