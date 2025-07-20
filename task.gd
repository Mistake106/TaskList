extends Panel

var isComplete: bool = false
var text: String

func _ready() -> void:
	$TextButton.text = text

func _on_text_button_pressed() -> void:
	isComplete = !isComplete
	colorCheck()


func _on_delete_button_pressed() -> void:
	queue_free()

func colorCheck():
	if isComplete:
		add_theme_color_override('panel',Color(0.0, 1.0, 0.0, 1.0))
	elif !isComplete:
		add_theme_color_override('panel', Color(0.98, 0.78, 0.0, 1.0))
