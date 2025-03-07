extends CanvasLayer

@onready var collectible_label = $MarginContainer/VBoxContainer/HBoxContainer/CollectibleLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	CollectibleManager.on_collectible_award_received.connect(on_collectible_award_received)
	
func on_collectible_award_received(total_award : int):
	collectible_label.text = str(total_award)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pause_texture_button_pressed() -> void:
	GameManager.pause_game()
