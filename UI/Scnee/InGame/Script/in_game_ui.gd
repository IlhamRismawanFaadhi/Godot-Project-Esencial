extends Control

func _ready() -> void:
	$Pause.visible = false
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		pause()
		
func pause()->void:
	if $Pause.visible == true:
		$Pause.visible = false
		%NavBar.visible = true
	else :
		$Pause.visible = true
		%NavBar.visible = false
func _on_button_pressed() -> void:
	pause()
