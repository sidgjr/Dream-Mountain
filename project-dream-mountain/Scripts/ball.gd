extends RigidBody3D

var speed = 1.0

func _physics_process(delta):
	var velocity = Vector3.ZERO

	if Input.is_action_pressed("move_forward"):
		velocity.z -= 1
	if Input.is_action_pressed("move_backward"):
		velocity.z += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_right"):
		velocity.x += 1

	if velocity != Vector3.ZERO:
		velocity = velocity.normalized() * speed
		apply_central_impulse(velocity)
