extends Node

@onready var MainMenu = $MainMenu
@onready var LoadGameMenu = $LoadGameMenu
@onready var _active_scene = MainMenu

func _on_main_menu_scene_change_requested(scene):
	_change_scene_to(scene)

func _on_load_game_menu_back_button_pressed():
	_change_scene_to(App.Scene.MAIN_MENU)

func _change_scene_to(scene):
	var next_scene
	
	match scene:
		App.Scene.MAIN_MENU:
			next_scene = MainMenu
		App.Scene.LOAD_GAME_MENU:
			next_scene = LoadGameMenu
		App.Scene.SETTINGS_MENU:
			next_scene = MainMenu # TODO

	if _active_scene != next_scene:
		_active_scene.hide()
		_active_scene = next_scene
		_active_scene.show()
