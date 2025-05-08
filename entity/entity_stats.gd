extends Resource
class_name EntityStats

@export var _health: int = 100
@export var _damage: int = 10
@export var _speed: int = 200
@export var _speed_multiplier: float = 2.5

func get_health() -> int:
	return _health

func get_damage() -> int:
	return _damage

func get_speed() -> int:
	return _speed

func get_speed_multiplier() -> float:
	return _speed_multiplier
