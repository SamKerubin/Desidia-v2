extends CharacterBody2D
class_name Player

@export var stats: EntityStats = load("res://entity/player_stats.tres").duplicate()

@onready var health_component: HealthComponent = $HealthComponent
@onready var attack_component: AttackComponent = $AttackComponent
@onready var movement_component: MovementComponent = $MovementComponent

var direction: Vector2 = Vector2.ZERO

func _ready() -> void:
	health_component.health = stats.get_health()
	attack_component.damage = stats.get_damage()
	movement_component.speed_multiplier = stats.get_speed_multiplier()

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	movement_component.move_entity(direction, self, stats.get_speed())

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		stats.set_speed(stats.get_speed() * stats.get_speed_multiplier())

	if event.is_action_released("ui_accept"):
		stats.set_speed(stats.get_speed() / stats.get_speed_multiplier())

	if event.is_action_pressed("attack"):
		attack_component.position = direction * 35
