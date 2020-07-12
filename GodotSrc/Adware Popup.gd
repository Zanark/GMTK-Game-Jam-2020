extends Control

onready var Children = get_children()

func _ready():
	print(get_child_count())
	print(get_children())
	random_popup()
	
func random_popup():
	for i in Children:
		i.popup()

