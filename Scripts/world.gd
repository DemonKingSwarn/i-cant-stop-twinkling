extends Node2D

var enemy = preload("res://Scenes/enemy.tscn")

func _on_enemy_spawn_timer_timeout():
	var enemyPosition = Vector2(randi_range(-160, 670), randi_range(-90, 390))
	
	while enemyPosition.x < 640 and enemyPosition.x > -80 or enemyPosition.y < 360 and enemyPosition.y > -45:
		enemyPosition = Vector2(randi_range(-160, 670), randi_range(-90, 390))
	
	var enemyInstance = enemy.instantiate()
	enemyInstance.position = enemyPosition
	add_child(enemyInstance)
	
