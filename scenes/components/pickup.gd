@tool
extends Node2D
class_name PickupItem

@export var item_texture: Texture2D
@export var item_name: String
@export var item_description: String

@onready var pickup_sprite: Sprite2D = $PickupSprite

signal item_pickup_requested(item: PickupItem)

func _ready():
	pickup_sprite.texture = item_texture

func _on_item_hitbox_area_entered(_area: Area2D) -> void:
	item_pickup_requested.emit(self)
