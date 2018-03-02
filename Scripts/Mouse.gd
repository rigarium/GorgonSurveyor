extends Sprite

func _process(delta):
	position = get_viewport().get_mouse_position()

func _on_ColorPickerButton_color_changed( color ):
	set_modulate(color)