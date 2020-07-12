extends Control

onready var Children = get_children()

func _ready():
	print(get_child_count())
	print(get_children())
	filter_Children()
	
func filter_Children():
	for i in Children:
		if i.get_name() == "Timer":
			Children.erase(i)
	
func random_popup():
	var child = Children[randi() % Children.size()]
	child.popup()

func _on_Timer_timeout():
	random_popup()
