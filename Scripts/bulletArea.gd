extends Area2D

var pDamageCount : float = 2
var eDamageCount : float = 10

func _ready():
	body_entered.connect(on_body_entered)
	
func on_body_entered(body: Node2D):
	#print(body.name)
	if body is Enemy:
		var enemy : Enemy = body as Enemy
		enemy.apply_damage(pDamageCount)
		enemy.personal_damage(eDamageCount)
		
	if body is Hurt:
		#var meow : Hurt = body as Hurt
		print("HAHA U CANT KILL ENEMIES")
