extends Node2D
class_name PuyoPair

var puyo1: Puyo
var puyo2: Puyo

const MOVE_SPEED = 500
var destination: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	print('puyo pair ready')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print('----')
	#print(position)
	#print(destination)
	#print(puyo1.position)
	#print(puyo2.position)
	if position != destination:
		var newPosition = position.move_toward(destination, delta * MOVE_SPEED)
		position = newPosition
		#position = destination

func _init():
	print('puyo pair init')
	puyo1 = load("res://scenes/puyo.tscn").instantiate()
	puyo2 = load("res://scenes/puyo.tscn").instantiate()
	puyo1.color = randi() % 5
	puyo2.color = randi() % 5
	puyo2.position.x += 32
	add_child(puyo1)
	add_child(puyo2)

func puyo1_position():
	return position + puyo1.position
	
func puyo2_position():
	return position + puyo2.position
	
func isMoving():
	return destination != position
	
