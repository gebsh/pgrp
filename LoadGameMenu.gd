extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_back_button_pressed():
	print("Wciśnięto przycisk \"Powrót\"")

func _on_load_button_pressed():
	print("Wciśnięto przycisk \"Wczytaj\"")

func _on_saved_games_save_selected(name):
	print("Zaznaczono zapis \"{name}\"".format({ "name": name }))

func _on_saved_games_save_chosen(name):
	print("Wybrano zapis \"{name}\"".format({ "name": name }))
