extends CharacterBody2D

class_name Enemy

@export var speed = 100
@export var hitpoints = 100

var maxHitpoints = hitpoints

var playerPosition
var targetPosition
@onready var player = get_parent().get_parent().get_node("Player")

func _physics_process(delta):
	playerPosition = player.global_position
	targetPosition = (playerPosition - position).normalized()
	
	if position.distance_to(playerPosition) > 3:
		velocity = targetPosition * speed
		move_and_slide()
		look_at(playerPosition)

func apply_damage(damageCount) -> void:
	player.damage(damageCount)
	player.hitpoints += 1
	
func personal_damage(damage):
	hitpoints -= damage
	if hitpoints <= 0:
		player.incrementScore()
		queue_free()
