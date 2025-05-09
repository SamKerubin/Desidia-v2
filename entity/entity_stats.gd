extends Resource
class_name EntityStats

@export var _health: int = 0
@export var _damage: int = 0
@export var _speed: int = 0
@export var _speed_multiplier: float = 0

func get_health() -> int:
	return _health

func get_damage() -> int:
	return _damage

func set_speed(value: int) -> void:
	_speed = value

func get_speed() -> int:
	return _speed

func get_speed_multiplier() -> float:
	return _speed_multiplier
