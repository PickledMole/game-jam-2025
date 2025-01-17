extends Control
 
@onready var option_button: OptionButton = $HBoxContainer/OptionButton as OptionButton

const RESOLUTION_DICT : Dictionary = {
	"1280x720": Vector2i(1280,720),
	"1280x800" : Vector2i(1280,800),
	"1366x768" : Vector2i(1366,768),
	"1440x900" : Vector2i(1440,900),
	"1680x1050" : Vector2i(1680,1050),
	"1920x1080" : Vector2i(1920,1080),
	"1920x1200" : Vector2i(1920,1200),
	"2560x1440" : Vector2i(2560,1440),
} 

func _ready() -> void:
		option_button.item_selected.connect(on_resolution_selected)
		add_resolution_items()
		
		
func add_resolution_items() -> void:
	for resolution_size_text in RESOLUTION_DICT:
		option_button.add_item(resolution_size_text)
	

func on_resolution_selected(index: int) -> void:
	DisplayServer.window_set_size(RESOLUTION_DICT.values()[index])
