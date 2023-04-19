extends CharacterBody2D

var speed = 200
var motion = Vector2.ZERO
var player = null

func _physics_process(delta):
	#aaaaaaaaamotion = Vector2.ZERO
	if player:
		velocity = position.direction_to(player.position * speed)
	motion = move_and_slide()
