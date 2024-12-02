extends Node2D

@export var Plants:Node2D

var UINode:UI
var card_list:Array[CardTemplate]
var hand_scene

func _ready() -> void:
	UINode = get_tree().get_first_node_in_group("UI")
	card_list = UINode.card_list
	for card in card_list:
		card.card_click.connect(_on_card_click)

func _on_card_click(card_res:cardRes):
	if not hand_scene:
		hand_scene = card_res.plant_scene.instantiate()
		UINode.add_child(hand_scene)

func _process(delta: float) -> void:
	if hand_scene:
		hand_scene.position = get_global_mouse_position()
