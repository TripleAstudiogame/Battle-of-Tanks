extends CharacterBody2D

func _ready():
	pass # Replace with function body.

var acceleration = 100
var deceleration = 50
var speed_max = 150
var speed = 0
var rotation_speed = 0.7
var zadniy
var boolis = true


func _physics_process(delta):
	
	if Input.is_action_pressed("up"):
		speed += acceleration*delta
		speed = clamp(speed,0,speed_max)
	
	var horisontal_input = Input.get_axis("rotation_left", "rotation_right")

	if horisontal_input != 0.0:
		rotation += horisontal_input * delta * rotation_speed

		
	if Input.is_action_pressed("down"):
		speed += acceleration*delta
		zadniy = speed_max-((speed_max/100)*50)
		speed = clamp(speed,0,zadniy)
	
	velocity = transform.x * Input.get_axis("down", "up") * speed
	

	
		
	if Input.is_action_just_pressed("shoot"):
		$AnimatedSprite2D.play("su_85_shoot")
		
	if Input.is_action_just_released("esc"):
		boolis = not boolis
		$Label.visible = boolis
		
	
	move_and_slide()
	
