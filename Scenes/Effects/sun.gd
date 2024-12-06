extends AnimatedSprite2D
class_name Sun

@export var collect_speed := 600

var sun_num : int
var is_click := false
var UI_Node:UI

func _on_button_pressed() -> void:
	if not is_click:
		is_click = true
		var sun_manager:SunManager = get_tree().get_first_node_in_group("SunManager")
		UI_Node = get_parent()
		var _tween = create_tween()
		var end_pos = UI_Node.sun_collect_pos
		var dua = position.distance_to(end_pos) / collect_speed
		_tween.tween_property(self,"position",end_pos,dua)
		await _tween.finished
		sun_manager.sun += sun_num
		queue_free()
