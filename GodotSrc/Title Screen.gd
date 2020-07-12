extends Node2D

func _ready():
	pass # Replace with function body.
	

func _on_StartGame_pressed():
	get_tree().change_scene("res://Scene 1.tscn")


func _on_Tutorial_pressed():
	get_tree().change_scene("res://Tutorial.tscn")
