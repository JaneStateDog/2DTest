extends RigidBody2D

var jump_thrust = 20000
var move_thrust = 1000
var torque = 1000

var can_jump = false


func _integrate_forces(state):
	var velocity = Vector2.ZERO
	var direction = 0
	
	if Input.is_action_pressed("jump") and can_jump:
		velocity += Vector2(0, -jump_thrust)
		can_jump = false
	
	if Input.is_action_pressed("move_right"):
		velocity.x += move_thrust
		direction = 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= move_thrust
		direction = -1
		
	if Input.is_action_pressed("move_down"):
		velocity.y += move_thrust
		
	state.apply_force(velocity)
	state.apply_torque(direction * torque)


func _on_body_entered(body):
	if position.y < body.position.y:
		can_jump = true


func _on_body_exited(_body):
	can_jump = false


func _on_visible_on_screen_notifier_2d_screen_exited():
	get_tree().quit()
