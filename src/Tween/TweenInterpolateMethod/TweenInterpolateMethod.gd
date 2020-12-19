extends MarginContainer


func _ready():
	$Tween.interpolate_method(
		self, 'update_label',
		0, 50,
		5, Tween.TRANS_LINEAR, Tween.EASE_OUT,
		2
	)
	$Tween.start()


func update_label(value: float) -> void:
	$Label.text = str(int(value))
