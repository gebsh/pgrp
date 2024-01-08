extends Node

const _words = [
	"kwiat",
	"słońce",
	"ołówek",
	"biurko",
	"telefon",
	"drzewo",
	"deszcz",
	"ławka",
	"jezioro",
]

@onready var PendingTiles = $PendingTilesScroll/PendingTiles
@onready var PlacedTiles = $PlacedTilesScroll/PlacedTiles
@onready var _word = _words.pick_random().to_upper()

func _ready():
	var letters = _shuffle_letters(_word)

	for i in range(letters.size()):
		var tile = Button.new()
		# TODO: Perhaps we could create a dedicated node/scene for tiles?
		var button_pressed = func():
			if tile.get_parent() == PendingTiles:
				PendingTiles.remove_child(tile)
				PlacedTiles.add_child(tile)
			else:
				PlacedTiles.remove_child(tile)
				PendingTiles.add_child(tile)

			if PendingTiles.get_child_count() == 0:
				var word = ""

				for child in PlacedTiles.get_children():
					word = word + child.text

				if word == _word:
					print("Correct")
				else:
					print("Incorrect")

		tile.text = letters[i]
		tile.custom_minimum_size = Vector2(64, 64)
		tile.pressed.connect(button_pressed)

		PendingTiles.add_child(tile)

func _shuffle_letters(word):
	var letters = word.split("")
	# The built-in Array.shuffle() method does not guarantee that the result is
	# not the same as the original. This implements Sattolo's shuffling
	# algorithm instead:
	# https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle#Sattolo's_algorithm
	var i = letters.size()
	var j
	var tmp

	while i > 1:
		i = i - 1
		j = randi_range(0, i)
		tmp = letters[i]
		letters[i] = letters[j]
		letters[j] = tmp

	return letters
