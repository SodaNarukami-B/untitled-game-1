extends Item
class_name HandItem

@export var item_data: Item;

func _ready() -> void:
	if item_data != null:
		item_icon = item_data.item_icon;
		print("Intializated")

func use() -> void: # That function MUST exists
	pass

	

