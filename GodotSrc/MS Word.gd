extends Node2D

func _ready():
	pass # Replace with function body.


var EnteredText = ""

func _on_LineEdit_text_entered(new_text):
	print(new_text)
	EnteredText = new_text

func _on_Submit_Button_pressed():
	if EnteredText == "hard drives, light bulbs, power cables" or "Hard drives, Light bulbs, Power cables":
		get_tree().change_scene("res://The End.tscn") #add end screen here
