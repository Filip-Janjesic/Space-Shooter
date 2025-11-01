extends CharacterBody2D

@export var speed := 500

func _ready():
	position = Vector2(100, 500)

func _process(delta):
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	move_and_slide()
