extends OptionButton

var serbule = preload("res://Sprites/serbule.jpg")
var serbule_hills = preload("res://Sprites/serbule_hills.png")

func _ready():
	add_item("Serbule", 0)
	add_item("Serbule Hills", 1)
	pass

func _on_MapOption_item_selected(id):
	if id == 0:
		get_parent().get_node("Map").texture = serbule
	elif id == 1:
		get_parent().get_node("Map").texture = serbule_hills
	else:
		print("Invalid ID ", id, " was passed to the OptionButton callback")
