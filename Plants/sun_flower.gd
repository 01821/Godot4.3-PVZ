extends PlantTemplate

@onready var birth_sun_component: BirthSunComponent = $BirthSunComponent
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	birth_sun_component.birth_sun.connect(_on_birth_sun)

func _on_birth_sun(sun_num):
	animation_player.play("birth_sun")

func _finish_plant():
	birth_sun_component.timer.start()
