extends CharacterBody2D

@export var movement_data : PlayerMovementData
var screen_size


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = Vector2.ZERO
	if Input.is_action_pressed("p1_move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("p1_move_down"):
		velocity.y += 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * movement_data.speed

	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
