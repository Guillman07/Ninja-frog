extends KinematicBody2D


var base_speed = 300
var speed = Vector2.ZERO
var direccio = Vector2.DOWN
var gravetat = Vector2.DOWN * 980
var jump_speed = -400
var left_jumps = 1
signal hit

func _ready():
	#hide()
	pass
func _physics_process(delta):
	#position += speed * direccio * delta
	speed.x = 0
	speed += gravetat * delta
	
	if Input.is_action_pressed("up")and is_on_floor():
		speed.y = jump_speed
	if Input.is_action_pressed("right"):
		speed += Vector2.RIGHT * base_speed
	if Input.is_action_pressed("left"):
		speed += Vector2.LEFT * base_speed
	#if Input.is_action_pressed("up") and left_jumps > 0:
		#speed.y = jump_speed
		#left_jumps -= 2
		
		
	
	
	speed = move_and_slide(speed , Vector2.UP)# * direccio)
	animation(speed)
	
func animation(speed):
	if speed.x > 0 and speed.y > -2:
		$ninja_frog.play("run")
		$ninja_frog.flip_h = false
	elif speed.x < 0 and speed.y > -2:
		$ninja_frog.play("run")
		$ninja_frog.flip_h = true
	
	if abs(speed.x) < 0.1 and speed.y > -1:
		$ninja_frog.play("idle")
		
	if speed.y < -2:
		$ninja_frog.play("jump")
	
