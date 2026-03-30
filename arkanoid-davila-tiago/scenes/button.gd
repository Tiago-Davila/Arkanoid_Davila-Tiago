extends Button

func _on_btn_iniciar_pressed():
	get_tree().change_scene_to_file("res://scenes/arkanoid.tscn")


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/arkanoid.tscn")
	
