extends Area2D
class_name HealthComponent

signal on_damage
signal on_death

@export var damaged: bool = false
@export var alive: bool = true

var health: int

func take_damage(amount: int) -> void:
	if damaged or not alive: return

	health -= amount
	on_damage.emit()
	if health <= 0:
		on_death.emit()
