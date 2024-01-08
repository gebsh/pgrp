extends Control

signal save_selected(name)
signal save_chosen(name)

var items: Array[String] = []
@onready var list = $ScrollContainer/ItemList

func _ready():
	for i in range(10):
		items.push_back("Zapis gry {i}".format({ "i": i + 1 }))
		list.add_item(items[i])

func _on_item_list_item_selected(index):
	save_selected.emit(items[index])

func _on_item_list_item_activated(index):
	save_chosen.emit(items[index])
