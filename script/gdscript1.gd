extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	body_entered.connect(_on_body_entered)
func _on_body_entered(body: Node2D):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://asses/02_FOREST_EXPLORER.tscn")
	if body.has_method("get_item_data"):
		var new_item: ItemData = body.get_item_data()
	var new_item: ItemData = body.item_data
	var existing_item
