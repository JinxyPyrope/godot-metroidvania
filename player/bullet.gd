extends AnimatedSprite2D

var bullet_impact_effect = preload("res://bullet_impact_effect.tscn")

var speed : int = 400
var direction : int
var damage_amount : int = 1

func _physics_process(delta):
	move_local_x(direction * speed * delta)


func _on_timer_timeout() -> void:
	queue_free()


func _on_hitbox_area_entered(_area: Area2D) -> void:
	print("Bullet Area Entered")
	bullet_impact()


func _on_hitbox_body_entered(_body: Node2D) -> void:
	print("Bullet body entered")
	
func get_damage_amount() -> int:
	return damage_amount

func bullet_impact():
	var bullet_impact_effect_instance = bullet_impact_effect.instantiate() as Node2D
	bullet_impact_effect_instance.global_position = global_position
	get_parent().add_child(bullet_impact_effect_instance)
	queue_free()
