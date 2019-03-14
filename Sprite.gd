extends Sprite

const SPEED = 90
var vertvel = 0


func _input(event):
	if event.is_action_pressed("ui_wheel_up"):
		vertvel = -1
		print('upp')
	elif event.is_action_pressed("ui_wheel_down"):
		vertvel = 1
		print('dowwww')
	else:
		pass



func _process(delta):
	#position = Vector2()
	vertvel = 0
	if Input.is_action_pressed("ui_right"):
		position.x+=delta*SPEED
	if Input.is_action_pressed("ui_left"):
		position.x-=delta*SPEED
	position.y += vertvel*delta*SPEED*10000

