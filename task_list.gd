extends Control

func _process(delta: float) -> void:
	sortTasks()

func sortTasks():
	for task in get_children():
		if task.isComplete == true:
			get_parent().get_parent().finishTask(task)
		else:
			pass
