extends TextureRect

var entered = false

func _input(ev):
	if ev.is_action_pressed("mouse_right") and entered == true:
		queue_free()

func _on_CanvasMarker_mouse_entered():
	entered = true

func _on_CanvasMarker_mouse_exited():
	entered = false
