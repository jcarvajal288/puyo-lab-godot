extends RigidBody2D

enum PuyoColor { RED, YELLOW, GREEN, BLUE, PURPLE}

@export var color: PuyoColor

# Called when the node enters the scene tree for the first time.
func _ready():
	if color == PuyoColor.RED:
		$AnimatedSprite2D.play("red")
	elif color == PuyoColor.YELLOW:
		$AnimatedSprite2D.play("yellow")
	elif color == PuyoColor.GREEN:
		$AnimatedSprite2D.play("green")
	elif color == PuyoColor.BLUE:
		$AnimatedSprite2D.play("blue")
	elif color == PuyoColor.PURPLE:
		$AnimatedSprite2D.play("purple")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
