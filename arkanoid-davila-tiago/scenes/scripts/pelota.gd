extends RigidBody2D
var velocidad = 550

func _ready() -> void:
	linear_velocity = Vector2(350, -350)
	gravity_scale = 0
	linear_damp = 0
	angular_damp = 0
	add_to_group("pelota")
	var material := PhysicsMaterial.new()
	material.bounce = 0.5
	material.friction = 0
	physics_material_override = material
	
	
func _physics_process(delta):
	if linear_velocity.length() != 0:
		linear_velocity = linear_velocity.normalized() * velocidad
