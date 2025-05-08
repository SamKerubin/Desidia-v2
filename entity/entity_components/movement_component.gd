extends Node
class_name MovementComponent

func move_entity(entity: Entity) -> void:
	var direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction != Vector2.ZERO:
		entity.velocity = direction.normalized() * entity.stats.get_speed()

		entity.move_and_slide()
