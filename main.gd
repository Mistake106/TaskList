extends Node

var completedTasks: int
var taskPath = preload("res://task.tscn")


func _on_add_task_button_pressed():
	addTask($TextEdit.text)


func addTask(description: String):
	var task = taskPath.instantiate()
	$PendingTaskList.add_child(task)
	task.text = description
	$TextEdit.text = ""
	
func unFinishTask(p_task):
	p_task.reparent($PendingTaskList)
	p_task.global_position = $PendingTaskList.global_position
	
func finishTask(c_task):
	c_task.reparent($CompleteTaskList)
	c_task.global_position = $CompleteTaskList.global_position
