extends Node2D 
@export var item_resources: ItemData

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	
@export var item_id: String = 'mushrooms' 


# Если в Area2D находиться любое body, вызывается данная функция 
func _on_area_2d_body_entered(body: Node2D) -> void: 
	 # Проверка body = Player 
	if body.name == 'player': 
		 # Вызов сигнала с именем предмета 
		Global.item_collected.emit(item_id) 
		Global.add_item(item_resources)
		 # Удаление предмета 
		queue_free()
