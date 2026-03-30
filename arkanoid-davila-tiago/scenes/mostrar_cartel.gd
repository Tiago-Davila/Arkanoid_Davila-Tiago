extends Area2D

@onready var cartel = get_node("/root/Main/CanvasLayer/Label")

func _on_body_entered(body):
	if body.is_in_group("pelota"):
		cartel.visible = true
		body.queue_free()
