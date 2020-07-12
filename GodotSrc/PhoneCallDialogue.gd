extends RichTextLabel

var dialogue = ["Hey! Hey! This is Jeremy, you are the new intern right?", "Okay well you see we have got some urgent work we need to get done ASAP. Ya need to publish the patch notes for the updates on the company's latest app \'Get Motivated: Quarantine Edition\' ", "The deadline is in 20 mins, get this done ASAP and mail me the draft!"]
var page = 0
onready var PhoneNode = get_node("/root/Scene1/Phone")

func _ready():
	set_bbcode(dialogue[page])
	set_visible_characters(0)
	set_process_input(true)

func _input(event):
	if event is InputEventMouseButton:
		if get_visible_characters() > get_total_character_count():
			if page < dialogue.size()-1:
				page += 1
				set_bbcode(dialogue[page])
				set_visible_characters(0)
			else:
				get_owner().visible = false
				PhoneNode.visible = false
		else:
			set_visible_characters(get_total_character_count())

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
	


func _on_Polygon2D_hide():
	pass
