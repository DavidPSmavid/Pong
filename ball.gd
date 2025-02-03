extends Area2D

signal player_1_score
signal player_2_score

var velocity: Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	var col_layer = body.get_collision_layer()
	if col_layer == 1:
		velocity.y = -velocity.y
	if col_layer == 2:
		velocity.x = -(velocity.x * 1.1)
		velocity.y += body.velocity.normalized().y
	if col_layer == 4:
		player_2_score.emit()
	if col_layer == 8:
		player_1_score.emit()
