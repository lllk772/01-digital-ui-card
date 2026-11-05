extends Control

@onready var name_input: TextEdit = $VBoxContainer/Name/nameTextEdit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	next_dutton.pressed.connect(_on_next_pressed)
	
func _on_next_pressed() -> void:
	var player_name = name_input.text.strip_edges()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
