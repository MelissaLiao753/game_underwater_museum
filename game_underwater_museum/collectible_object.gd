
extends Area2D
class_name collectible_object

@onready var interactable: Area2D = $interactable
@onready var interact_collision_shape_2d: CollisionShape2D = $interactable/CollisionShape2D
@onready var _collision_shape_2d: CollisionShape2D = $CollisionShape2D

var is_interacted: bool = false
@export var sprite_2d: Sprite2D
@export var item_value: int = 15
@export var item_texture: Texture2D
func _ready() -> void:
	for child in get_children():
		if child is Sprite2D:
			sprite_2d = child
		elif child is Area2D:
			interactable = child
	
	if sprite_2d and item_texture:
		sprite_2d.texture = item_texture
	
	if interactable:
		interactable.interact = _on_interact
	else:
		push_error("Error!!")
	
func _on_interact() -> void:
	if not is_interacted:
		is_interacted = true
		interactable.is_interactable = false
		print("Item Stolen!!")
		EventBus.item_collected.emit(item_value)
		queue_free()
