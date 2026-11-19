extends Node
var hp 
var hov 
var bag 
var wg 
var name_user # Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.# Задаем значения переменным 
func set_info(_hp, _hov, _bag, _wg, _name): 
	hp = _hp 
	hov = _hov 
	bag = _bag 
	wg = _wg 
	name_user = _name
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
signal item_collected(item_name: String)
# Сигнал уведомления об обновлении инвентаря (удаляем старый сигнал)
signal inventory_updated
signal update_selection_visual
var inventory: Array[ItemData] = []
const Max_inventory_size: int = 3
func add_item(item: ItemData):
	for existing_item in inventory:
		if existing_item.name == item.name:
			existing_item.amount += item.amount
			inventory_updated.emit()
			return
	if inventory.size() >= Max_inventory_size:
		print("Инвентарь полон!")
		return
	inventory.append(item)
	inventory_updated.emit()

	
