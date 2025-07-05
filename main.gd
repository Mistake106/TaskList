extends Node

var completedTasks: int
var taskPath = preload("res://task.tscn")


func _on_add_task_button_pressed():
	addTask($TextEdit.text)


func addTask(description: String):
	var task = taskPath.instantiate()
	$PendingTaskList.add_child(task)
	task.text = description
