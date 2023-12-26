extends Control

@onready var VolSliderMaster = $"TabContainer/Dźwięk/MarginContainer/VBoxContainer/Głośność muzyki"
var bus_master = AudioServer.get_bus_index("Music")

func _ready():
	VolSliderMaster.value = AudioServer.get_bus_volume_db(bus_master)

func _on_głośność_muzyki_value_changed(value):
	AudioServer.set_bus_volume_db(bus_master, linear_to_db(value))


func _on_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu/MainMenuScene.tscn")
