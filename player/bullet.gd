extends AnimatedSprite2D

var speed : int = 400
var direction : int

func _physics_process(delta):
	move_local_x(direction * speed * delta)


func _on_timer_timeout() -> void:
	queue_free()


func _on_hitbox_area_entered(area: Area2D) -> void:
	print("Bullet Area Entered")


func _on_hitbox_body_entered(body: Node2D) -> void:
	print("Bullet body entered")
