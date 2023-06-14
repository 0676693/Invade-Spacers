extends CheckButton

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func on_automaticFiring_pressed():
	print(pressed)
	GlobalVariables.automaticFiring = pressed



func _process(delta):
	if GlobalVariables.automaticFiring:
		get_parent().get_property_list().find(pressed)
		pressed = true
