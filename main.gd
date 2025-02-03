extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init_ball()


# Called every frame. 'delta' is the elapsed time since the previous frame. 
func _process(_delta: float) -> void:
	$Ball.global_position += $Ball.velocity


func _on_canvas_layer_start_game() -> void:
	init_ball()
	

func init_ball() -> void:
	$Ball.position = get_viewport_rect().get_center()
	$Ball.show()
	
	var directions = [randf_range(3*PI/4, 5*PI/4), randf_range(-PI/4, PI/4)]
	var direction = directions[randi() % directions.size()]
	$Ball.rotation = direction
	
	var velocity = Vector2(randf_range(2.0, 3.0), 0.0)
	$Ball.velocity = velocity.rotated(direction)
