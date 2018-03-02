extends TextureRect

var entered = false
var id = 0
var map = null

func _ready():
	map = get_parent().get_parent().get_node("Map")

func _input(ev):
	if ev.is_action_pressed("mouse_right") and entered == true:
		map._remove_marker_and_renumber(id)
		queue_free()

func _queue_free():
	queue_free()
	
func _set_id(value):
	id = value
	$ID.bbcode_text = "[center]"
	$ID.bbcode_text += str(id)
	$ID.bbcode_text += "[/center]"

func _on_CanvasMarker_mouse_entered():
	entered = true

func _on_CanvasMarker_mouse_exited():
	entered = false
