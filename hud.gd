extends CanvasLayer

signal start_game

var player_1_score = 0
var player_2_score = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_ball_player_1_score() -> void:
	player_1_score += 1
	$Player1Score.text = str(player_1_score)
	start_game.emit()


func _on_ball_player_2_score() -> void:
	player_2_score += 1
	$Player2Score.text = str(player_2_score)
	start_game.emit()
