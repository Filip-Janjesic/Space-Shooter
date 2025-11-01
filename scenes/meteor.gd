extends Area2D

var speed: int
var rotation_speed: int
var direction_x: float

func _ready():
	var rng := RandomNumberGenerator.new()
	
	# start position
	var width = get_viewport().get_visible_rect().size.x
	var random_x = rng.randi_range(0, int(width))
	var random_y = rng.randi_range(-150, 150)
	position = Vector2(random_x, random_y)
	
	# speed / rotation / direction
	speed = rng.randi_range(200, 500)
	direction_x = rng.randf_rang()
	
func _process(delta):
	position += Vector2(0, 1.0) * speed * delta
	
func _on_body_entered(body):
	print("body entered")
	print(body)
