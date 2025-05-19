extends Area2D


@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D):
	print("YOU DIED!") # Replace with function body.
	Engine.time_scale = 0.5
	body.get_node("CharacterCollider").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
