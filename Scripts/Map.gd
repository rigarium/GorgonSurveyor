extends TextureRect

var marker = preload("res://CanvasMarker.tscn")
var entered = false
var colorPicker = null
var markerCount = 0

func _ready():
	colorPicker = get_parent().get_node("MouseColors").get_node("ColorPickerButton")

func _on_Map_mouse_entered():
	entered = true

func _on_Map_mouse_exited():
	entered = false

func _input(ev):
	if ev.is_action_pressed("mouse_left") and entered == true:
		var m = marker.instance()
		_add_marker(m)
		add_child(m)
		
func _add_marker(m):
	m.rect_position = get_viewport().get_mouse_position() - Vector2(439, 16)
	m.modulate = colorPicker.get_pick_color()
	markerCount += 1
	m._set_id(markerCount)

func _remove_all_markers():
	markerCount = 0
	for n in get_children():
		n.queue_free()
	
	
func _remove_marker_and_renumber(id):
	markerCount -= 1
	for n in get_children():
		if n.id != id:
			if n.id > id:
				n.id -= 1
				n._set_id(n.id)