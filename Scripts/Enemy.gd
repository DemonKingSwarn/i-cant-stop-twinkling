extends CharacterBody2D

@export var speed = 100
var playerPosition
var targetPosition
var hit = 5
@onready var player = get_parent().get_parent().get_node("Player")

func _physics_process(delta):
	playerPosition = player.global_position
	targetPosition = (playerPosition - position).normalized()
	
	if position.distance_to(playerPosition) > 3:
		velocity = targetPosition * speed
		move_and_slide()
		look_at(playerPosition)


func _on_area_2d_area_entered(area):
	if area.name == "bullerArea":
		player.damage(5)
