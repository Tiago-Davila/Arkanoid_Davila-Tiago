extends Area2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("pelota"):
		var _rb = body as RigidBody2D
		_rb.linear_velocity = _rb.linear_velocity * -1
		queue_free()
