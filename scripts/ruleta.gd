extends Node2D
@export var grados_giro = 150
@onready var rueda = $Rueda
var detener:bool = false
@onready var timer = $Timer
@onready var girar = $"../Girar"

# Called when the node enters the scene tree for the first time.
func _ready():
	girar.text ="Girar"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	rueda.rotation_degrees+= grados_giro * delta

		


func _on_girar_pressed():
	if not detener:
		timer.wait_time = randf_range(0.0,3.5)
		timer.one_shot = true
		detener = true 
		timer.start()
	else:
		girar.text ="Girar"
		get_tree().reload_current_scene()


func _on_timer_timeout():
	grados_giro = 0
	girar.text = "Girar"
