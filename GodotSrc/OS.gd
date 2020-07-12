extends Node2D

onready var DialogueNode = get_node("/root/Scene1/Polygon2D")
onready var PhoneNode = get_node("/root/Scene1/Phone")
onready var TimerNode = get_node("/root/Scene1/Polygon2D/Timer")

func _ready():
	pass # Replace with function body.

func _on_Start_pressed():
	DialogueNode.visible = true
	PhoneNode.visible = true
	TimerNode.start()


func _on_Docs_pressed():
	get_tree().change_scene("res://MS Word.tscn")
