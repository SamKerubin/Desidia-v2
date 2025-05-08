extends Entity
class_name Player

@onready var movement_component: MovementComponent = $MovementComponent

func _ready() -> void:
	stats = EntityStats.new()

func _physics_process(delta: float) -> void:
	movement_component.move_entity(self)
