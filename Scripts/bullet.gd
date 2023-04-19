extends RigidBody2D

var vel = Vector2(1, 0)
var speed = 300

func _physics_process(delta):
	gravity_scale = 0
	var collisionInfo = move_and_collide(vel.normalized() * delta * speed)

func _on_body_entered(body):
	if !body.is_in_group("Player") or !body.is_in_group("Enemy"):
		queue_free()
