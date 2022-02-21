extends KinematicBody2D

var velocity = Vector2(0,-1)
const SPEED = 85
const GRAVITY = 30
const JUMPFORCE = -1000

#This is where the movement comes in
func _physics_process(_delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x += SPEED
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= SPEED
	
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y += JUMPFORCE
		
	
#Notes
# A booleen = True or False
	
	velocity.y = velocity.y + GRAVITY
	print (velocity.y)

#The velocity and stuff
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.2)
