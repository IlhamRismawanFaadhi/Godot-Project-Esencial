extends Control
@export var enable_adding: bool = false
@export var icon_texture: CompressedTexture2D
func _ready() -> void:
	if enable_adding == true:
		%AddedButton.visible = true
	else:
		%AddedButton.visible = false
	if icon_texture != null:
		
		%IconTextureRect.texture = icon_texture
		%IconTextureRectShadow.texture = icon_texture
