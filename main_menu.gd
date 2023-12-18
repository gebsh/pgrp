extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_newgame_button_pressed():
	print("Wciśnięto przycisk \"Nowa Gra\"")


func _on_loadgame_button_pressed():
	print("Wciśnięto przycisk \"Wczytaj Gre\"")


func _on_option_button_pressed():
	print("Wciśnięto przycisk \"Ustawienia\"")


func _on_exit_button_pressed():
	print("Wciśnięto przycisk \"Wyjdź z gry\"")
