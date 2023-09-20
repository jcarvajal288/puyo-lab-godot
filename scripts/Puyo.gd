extends RigidBody2D
class_name Puyo

enum PuyoColor { RED, YELLOW, GREEN, BLUE, PURPLE }

@export var color: PuyoColor

# Called when the node enters the scene tree for the first time.
func _ready():
	match color:
		PuyoColor.RED: $AnimatedSprite2D.play("red")
		PuyoColor.YELLOW: $AnimatedSprite2D.play("yellow")
		PuyoColor.GREEN: $AnimatedSprite2D.play("green")
		PuyoColor.BLUE: $AnimatedSprite2D.play("blue")
		PuyoColor.PURPLE: $AnimatedSprite2D.play("purple")
	print('puyo ready')


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
#func _init(color: PuyoColor):
#	color = color
