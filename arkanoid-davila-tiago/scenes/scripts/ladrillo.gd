extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("pelota"):
		var _rb = body as RigidBody2D
		_rb.linear_velocity = _rb.linear_velocity * -1
		var padre = get_parent()
		if padre.get_child_count() == 1:
			get_tree().change_scene_to_file("res://scenes/win-screen.tscn")
	
		queue_free()
