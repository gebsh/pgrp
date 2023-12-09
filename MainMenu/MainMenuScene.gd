extends Node2D


func pauseGame():
	get_tree().paused = true
	get_tree().change_scene_to_file("InGameMenu/InGameMenu.tscn")
func unPauseGame():
	get_tree().paused = false
	#get_tree().change_scene_to_file("MainMenu/InGameMenu.tscn")

func _on_quit_button_pressed():
	pauseGame()
