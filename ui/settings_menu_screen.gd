extends CanvasLayer

@onready var window_mode_o_ption_button: OptionButton = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/WindowModeOPtionButton
@onready var resolution_option_button: OptionButton = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/ResolutionOptionButton


var window_nodes : Dictionary = {"Fullscreen" : DisplayServer.WINDOW_MODE_FULLSCREEN,
								"Window" : DisplayServer.WINDOW_MODE_WINDOWED,
								"Window Maximized" : DisplayServer.WINDOW_MODE_MAXIMIZED}
								
var resolutions : Dictionary = {"320x180" : Vector2i(320, 180),
								"480x270" : Vector2i(480, 270),
								"640x360" : Vector2i(640, 360),
								"854x480" : Vector2i(640, 360),
								"1280x720" : Vector2i(1280, 720)}
									
