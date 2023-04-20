extends RigidBody2D

var vel = Vector2(1, 0)
var speed = 300
var damageCount = 5

@onready var player = get_parent().get_parent().get_node("Player")

func _physics_process(delta):
	gravity_scale = 0
	var collisionInfo = move_and_collide(vel.normalized() * delta * speed)



