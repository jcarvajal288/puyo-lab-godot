extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _init():
	var puyo1 = preload("res://scenes/puyo.tscn").instantiate()
	var puyo2 = preload("res://scenes/puyo.tscn").instantiate()
	puyo1.color = randi() % 5
	puyo2.color = randi() % 5
	puyo2.position.x += 32
	add_child(puyo1)
	add_child(puyo2)
