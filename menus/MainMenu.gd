extends Control

signal scene_change_requested(scene)

func _on_new_game_button_pressed():
	print("Wciśnięto przycisk \"Nowa gra\"")

func _on_load_game_button_pressed():
	scene_change_requested.emit(App.Scene.LOAD_GAME_MENU)

func _on_settings_button_pressed():
	scene_change_requested.emit(App.Scene.SETTINGS_MENU)

func _on_exit_button_pressed():
	get_tree().quit()
