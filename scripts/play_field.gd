extends Node2D

const TILE_SIZE = 32
const STARTING_POSITION = Vector2(TILE_SIZE, 0)

var puyoPair

# Called when the node enters the scene tree for the first time.
func _ready():
	puyoPair = preload("res://scenes/puyo_pair.tscn").instantiate()
	puyoPair.position = STARTING_POSITION
	add_child(puyoPair)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("move_right"):
		puyoPair.position.x += TILE_SIZE
	elif Input.is_action_just_pressed("move_left"):
		puyoPair.position.x -= TILE_SIZE
	elif Input.is_action_just_pressed("move_down"):
		puyoPair.position.y += TILE_SIZE
