extends Node

@export var key_id : String


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		InventoryManager.add_to_inventory("Key1", key_id)
		queue_free()
