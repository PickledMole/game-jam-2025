class_name MainMenu
extends Control

@onready var play_button = $MarginContainer/HBoxContainer/VBoxContainer/Play as Button
@onready var quit_button = $MarginContainer/HBoxContainer/VBoxContainer/Quit as Button
@onready var options_button = $MarginContainer/HBoxContainer/VBoxContainer/Options as Button
@onready var margin_container = $MarginContainer as MarginContainer
@onready var options_menu = $OptionsMenu as OptionsMenu

func _ready() -> void:
	play_button.button_down.connect(on_play_pressed)
	quit_button.button_down.connect(on_quit_pressed)
	options_button.button_down.connect(on_options_pressed)
	options_menu.exit_options_menu.connect(on_exit_options_menu)

func on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world.tscn")


func on_options_pressed() -> void:
	margin_container.visible = false
	options_menu.set_process(true)
	options_menu.visible = true

func on_quit_pressed() -> void:
	get_tree().quit()
	
func on_exit_options_menu() -> void:
	margin_container.visible = true
	options_menu.visible = false

	
