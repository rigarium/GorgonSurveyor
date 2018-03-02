extends TextureRect

var marker = preload("res://CanvasMarker.tscn")
var entered = false
var colorPicker = null

func _ready():
	colorPicker = get_parent().get_node("MouseColors").get_node("ColorPickerButton")

func _on_Map_mouse_entered():
	entered = true

func _on_Map_mouse_exited():
	entered = false

func _input(ev):
	if ev.is_action_pressed("mouse_left") and entered == true:
		var m = marker.instance()
		m.rect_position = get_viewport().get_mouse_position() - Vector2(433, 10)
		m.modulate = colorPicker.get_pick_color()
		add_child(m)