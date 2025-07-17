extends Button

var isComplete: bool = false

func _on_button_pressed() -> void:
	queue_free()


func _on_pressed() -> void:
	isComplete = true
