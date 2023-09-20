extends Node2D
class_name PlayField

const TILE_SIZE = 32
const STARTING_POSITION = Vector2(TILE_SIZE, 0)

var puyoPair: PuyoPair


# Called when the node enters the scene tree for the first time.
func _ready():
	puyoPair = preload("res://scenes/puyo_pair.tscn").instantiate()
	add_child(puyoPair)
	puyoPair.position = STARTING_POSITION
	puyoPair.destination = STARTING_POSITION
	#await get_tree().create_timer(1.0).timeout
	print('play field ready')
	
func isDestinationLegal(destination: Vector2):
	print(destination)
	return destination.x >= 0 and destination.x <= 128
	
func checkForInput():
	#print('checking for input')
	var destination
	if Input.is_action_just_pressed("move_right"):
		destination = Vector2(puyoPair.position.x + TILE_SIZE, puyoPair.position.y)
	elif Input.is_action_just_pressed("move_left"):
		print('move requested')
		destination = Vector2(puyoPair.position.x - TILE_SIZE, puyoPair.position.y)
	elif Input.is_action_just_pressed("move_down"):
		destination = Vector2(puyoPair.position.x, puyoPair.position.y + TILE_SIZE)

	if destination != null and isDestinationLegal(destination):
		puyoPair.destination = destination

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print('processing')
	if not puyoPair.isMoving():
		checkForInput()
