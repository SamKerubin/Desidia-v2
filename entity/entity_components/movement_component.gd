extends Node
class_name MovementComponent

@export var running: bool = false

var speed_multiplier: float

func move_entity(to: Vector2, entity: CharacterBody2D, speed: int) -> void:
	if to != Vector2.ZERO:
		entity.velocity = to.normalized() * speed
		entity.move_and_slide()
