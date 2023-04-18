extends CharacterBody2D

const bullet = preload("res://bullet.tscn")

@export var playerSpeed : int = 100
@export var bulletSpeed = 1000
@export var fireRate = 0.2

var canFire = true

func _process(delta):
	look_at(get_global_mouse_position())

	if Input.is_action_just_pressed("LMB") and canFire:
		var bulletInstance = bullet.instantiate()
		bulletInstance.position = self.global_position
		bulletInstance.rotation_degrees = rotation_degrees
		bulletInstance.apply_impulse(Vector2(), Vector2(bulletSpeed, 0))
		get_tree().get_root().add_child(bulletInstance)
		canFire	= false
		await get_tree().create_timer(fireRate)
		canFire = true

func _physics_process(delta):
	var direction : Vector2 = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	velocity = direction * playerSpeed
	
	move_and_slide()
