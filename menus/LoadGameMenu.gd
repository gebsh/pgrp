extends Control

signal back_button_pressed

func _on_back_button_pressed():
	back_button_pressed.emit()

func _on_load_button_pressed():
	print("Wciśnięto przycisk \"Wczytaj\"")

func _on_saved_games_save_selected(name):
	print("Zaznaczono zapis \"{name}\"".format({ "name": name }))

func _on_saved_games_save_chosen(name):
	print("Wybrano zapis \"{name}\"".format({ "name": name }))
