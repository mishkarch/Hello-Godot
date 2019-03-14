extends Sprite

const SPEED = 90

func _ready():
	pass # Replace with function body.

func _process(delta):
	#position = Vector2()
	if Input.is_action_pressed("ui_right"):
		position.x+=delta*SPEED

