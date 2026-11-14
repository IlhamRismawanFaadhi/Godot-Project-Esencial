extends Control


@export var play_address: String 
@export var credits_address: String
@onready var setting: Control = $Setting

func _on_play_pressed() -> void:
	Transition.change_scnee(play_address)

func _on_credits_pressed() -> void:
	Transition.change_scnee(credits_address)

func _on_setting_pressed() -> void:
	if setting.visible == false:
		setting.visible =  true
	else:
		setting.visible = false

func _on_exit_pressed() -> void:
	get_tree().quit()
