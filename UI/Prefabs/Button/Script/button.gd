extends Button
@export var hover_audio_button:AudioStream
@export var click_audio_button:AudioStream
func _ready() -> void:
	if hover_audio_button != null:
		$HoverAudioButton.stream = hover_audio_button
	if click_audio_button != null:
		$ClickAudioButton.stream = click_audio_button
func _on_pressed() -> void:
	$ClickAudioButton.play()

func _on_mouse_entered() -> void:
	$HoverAudioButton.play()
