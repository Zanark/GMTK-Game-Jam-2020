extends Node2D

func _ready():
	pass # Replace with function body.


var EnteredText = ""

func _on_LineEdit_text_entered(new_text):
	print(new_text)
	EnteredText = new_text

func _on_Submit_Button_pressed():
	if EnteredText == "This is the final text":
		get_tree().change_scene("res://Scene 1.tscn") #add end screen here
