class_name CardTemplate extends Control

@export var card_res:cardRes
@onready var card_light: TextureRect = $CardLight
@onready var card_dark: TextureRect = $CardDark
@onready var card_cool_progress: ProgressBar = $CardCool

var cd_time := 0.0
var is_sun_enough := false
var is_click := false

func _ready() -> void:
	card_light.texture = card_res.card_light
	card_dark.texture = card_res.card_dark
	
func _is_sun_enough(sun_num):
	if sun_num >= card_res.sun_num:
		is_sun_enough = true
	else:
		is_sun_enough = false