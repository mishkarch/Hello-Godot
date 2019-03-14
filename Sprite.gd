extends Sprite

const SPEED = 90
var vertvel = 0


func _input(event):
	if event.is_action_pressed("ui_wheel_up"):
		vertvel -= 1
		print('upp')
	elif event.is_action_pressed("ui_wheel_down"):
		vertvel += 1
		print('dowwww')
	else:
		pass
		#vertvel = 0
	#get_parent().get_node("Label").text='vertvel = '+str(vertvel)


func _process(delta):
	get_parent().get_node("Label").text='vertvel '+str(vertvel)
	#position = Vector2()
	if Input.is_action_pressed("ui_right"):
		position.x+=delta*SPEED
	if Input.is_action_pressed("ui_left"):
		position.x-=delta*SPEED
	if Input.is_action_pressed("ui_mb4"):
		position.y-=delta*SPEED
	if Input.is_action_pressed("ui_mb5"):
		position.y+=delta*SPEED

	position.y += vertvel*SPEED*delta

