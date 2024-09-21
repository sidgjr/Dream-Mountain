extends RigidBody3D

var speed = 5

func _physics_process(_delta):
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
		linear_velocity = velocity
