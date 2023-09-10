extends RigidBody2D

enum PuyoColor { RED, YELLOW, GREEN, BLUE, PURPLE}

@export var color: PuyoColor

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
