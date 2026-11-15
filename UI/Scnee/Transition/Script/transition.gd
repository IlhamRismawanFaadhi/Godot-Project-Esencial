extends CanvasLayer
var target_to: String
func _ready() -> void:
	print("start!!!!!")
func change_scnee(target: String)-> void:
	$AnimationTransition.play("Transition_masuk")
	target_to = target
	#$AnimationTransition.animation_finished



func _on_animation_transition_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Transition_masuk":
			
		get_tree().change_scene_to_file(target_to)
		$AnimationTransition.play("Transition_keluar")
