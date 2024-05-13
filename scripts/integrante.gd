extends Area2D
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var timer = $Timer


func _on_area_entered(area):
	animated_sprite_2d.play("activated")


func _on_area_exited(area):
	timer.start()
	


func _on_timer_timeout():
	animated_sprite_2d.play("idle")
