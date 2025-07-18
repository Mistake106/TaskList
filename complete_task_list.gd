extends Control

func _process(delta: float) -> void:
	sortTasks()

func sortTasks():
	for task in get_children():
		if task.isComplete == false:
			get_parent().unFinishTask(task)
		else:
			pass
