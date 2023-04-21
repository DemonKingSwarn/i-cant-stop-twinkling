extends CharacterBody2D

class_name Hurt

const bullet = preload("res://Scenes/bullet.tscn")


@export var bulletSpeed : int = 1000
@export var fireRate : float = 0.2

var canFire = true
var playerPosition

@onready var player = get_parent().get_parent().get_node("Player")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	playerPosition = player.global_position
	look_at(playerPosition)
	
	$hurterNode.look_at(playerPosition)

