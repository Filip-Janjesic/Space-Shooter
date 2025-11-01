extends Node2D

# 1. Load the scene
var metero_scene: PackedScene = load("res://scenes/meteor.tscn")

func _on_metoer_timer_timeout() -> void:
	# 2. Creat an instance
	var meteor = metero_scene.instantiate()
	
	# 3. Attach the node to the sceen tree
	$Meteors.add_child(meteor)
