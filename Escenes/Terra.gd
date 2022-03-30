extends Area2D

export (int) var speed
var movement = Vector2()
var limit
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	limit = get_viewport_rect().size

	
	
func _process(delta):
	
	movement.x = 0
	if Input.is_action_pressed("right"):
		movement.x += 2
	if Input.is_action_pressed("left"):
		movement.x += -2
		
	if movement.length() > 0:
		movement = movement.normalized() * speed
	position += movement * delta
	position.x = clamp(position.x, 0, limit.x)
