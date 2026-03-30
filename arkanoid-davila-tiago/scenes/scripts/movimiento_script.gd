extends CharacterBody2D  
const velocidad = 350
var motion := Vector2.ZERO

func get_input():
	motion = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		motion.x = -velocidad
	if Input.is_action_pressed("ui_right"):
		motion.x = velocidad

func _physics_process(_delta: float) -> void:
	get_input()
	velocity = motion
	move_and_slide()
