extends Node2D


@export var award_amount : int = 1

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var label: Label = $Label


func _ready():
	label.hide


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print(award_amount)
		
		animated_sprite_2d.hide()
		
		label.text = "%s" % award_amount
		
		label.show
		
