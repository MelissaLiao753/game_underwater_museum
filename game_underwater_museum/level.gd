extends Node2D
func _ready() -> void:
	var player_scene = load("res://player.tscn")
	
	var player = player_scene.instantiate()
	add_child(player)
	player.global_position = $"spawn point"
