extends MarginContainer


func _ready():
	$Tween.interpolate_method(
		self, 'update_label',
		0, 100,
		5.0, Tween.TRANS_SINE, Tween.EASE_OUT,
		2.0
	)
	$Tween.start()

func update_label(value: float) -> void:
	$Label.text = str(int(value))
#	$Label.modulate.b = ((50 - value) / 100) * 2
#	$Label.modulate.r = ((50 - value) / 100) * 2
