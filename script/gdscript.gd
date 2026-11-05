extends Control

@export var name_input: LineEdit
@export var start_button: Button
@export var error_label: Label
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_start_button_pressed():
	var player_name = name_input.text.strip_edges()
	if !player_name.length() < 2:
		_start_game(player_name)

func _start_game(player_name: String):
	print("Имя игрока: ", player_name)
	get_tree().change_scene_to_file("res://asses/02_FOREST_EXPLORER.tscn")
