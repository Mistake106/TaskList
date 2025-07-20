extends Node

var completedTasks: int
var taskPath = preload("res://task_b.tscn")


func _on_add_task_button_pressed():
	addTask($TextEdit.text)


func addTask(description: String):
	var task = taskPath.instantiate()
	$PendingTaskScrollContainer/PendingTaskList.add_child(task)
	task.text = description
	$TextEdit.text = ""
	
func unFinishTask(p_task):
	p_task.reparent($PendingTaskScrollContainer/PendingTaskList)
	p_task.global_position = $PendingTaskScrollContainer/PendingTaskList.global_position
	
func finishTask(c_task):
	c_task.reparent($CompleteTaskScrollContainer/CompleteTaskList)
	c_task.global_position = $CompleteTaskScrollContainer/CompleteTaskList.global_position
