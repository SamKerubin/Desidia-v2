extends Area2D
class_name AttackComponent

signal damage_done

@export var attacked: bool = false

@onready var attack_range: CollisionShape2D = $CollisionShape2D

var damage: int

func _on_body_hitted(body: Node2D) -> void:
	if body is HealthComponent:
		body.take_damage(damage)
		damage_done.emit()
	
