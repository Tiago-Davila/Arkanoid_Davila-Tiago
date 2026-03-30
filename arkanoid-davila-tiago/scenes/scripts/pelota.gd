extends RigidBody2D
var velocidad_constante = 500
func _ready() -> void:
	gravity_scale = 0
	linear_damp = 0
	angular_damp = 0
	linear_velocity = Vector2(350, -350)
	add_to_group("pelota")
	var velocidad_constante = 500
	
	var material := PhysicsMaterial.new()
	material.bounce = 1
	material.friction = 0
	physics_material_override = material
func _physics_process(delta):
	if linear_velocity.length() != 0:
		linear_velocity = linear_velocity.normalized() * velocidad_constante
