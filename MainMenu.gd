extends Control

func _ready():
	pass

func _process(delta):
	pass

func _on_new_game_button_pressed():
	print("Wciśnięto przycisk \"Nowa gra\"")

func _on_load_game_button_pressed():
	print("Wciśnięto przycisk \"Wczytaj grę\"")

func _on_settings_button_pressed():
	print("Wciśnięto przycisk \"Ustawienia\"")

func _on_exit_button_pressed():
	get_tree().quit()
