extends Node2D

const STARTING_POSITION = Vector2(32, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	var puyoPair = preload("res://scenes/puyo_pair.tscn").instantiate()
	puyoPair.position = STARTING_POSITION
	add_child(puyoPair)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
