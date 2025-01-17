class_name OptionsMenu
extends Control

@onready var back_button = $MarginContainer/VBoxContainer/Back as Button

signal exit_options_menu

func _ready() -> void:
	back_button.button_down.connect(on_exit_pressed)
	set_process(false)

func on_exit_pressed() -> void:
	exit_options_menu.emit()
	set_process(false)
