
extends Area2D
class_name collectible_object
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var interactable: Area2D = $interactable
@onready var interact_collision_shape_2d: CollisionShape2D = $interactable/CollisionShape2D
@onready var _collision_shape_2d: CollisionShape2D = $CollisionShape2D

var is_interacted: bool = false

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact() -> void:
	if not is_interacted:
		is_interacted = true
		interactable.is_interactable = false
		print("Item Stolen!!")
		queue_free()
