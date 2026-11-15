extends Node

# gameplay variable
signal mouse_sense_value_signal(new_value: float)
var mouse_sense_value: float = 0.0:
	set(value):
		if mouse_sense_value != value:
			mouse_sense_value = value
			mouse_sense_value_signal.emit(mouse_sense_value)
signal fov_value_signal(new_value: float)
var fov_value: float = 0.0:
	set(value):
		if fov_value != value:
			fov_value = value
			fov_value_signal.emit(fov_value)
signal fps_enable_signal(new_value: bool)
var fps_enable: bool = false:
	set(value):
		if fps_enable != value:
			fps_enable = value
			fps_enable_signal.emit(fps_enable)
# Graphic Variable
var resolution_index: int = 0
var fullscreen_enable: bool = true
# Audio variable
var master_value: float = 0.0
var sfx_value: float = 0.0
var music_value: float = 0.0
