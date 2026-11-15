extends PanelContainer
func _ready() -> void:
	GlobalSetting.fps_enable_signal.connect(show_fps)
func show_fps(value: bool)->void:
	visible = value
func _process(_delta: float) -> void:
	var fps: float = Engine.get_frames_per_second()
	$Label.text = str("FPS ", fps)
