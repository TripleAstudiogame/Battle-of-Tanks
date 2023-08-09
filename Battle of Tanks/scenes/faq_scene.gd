extends Control

var skin_n
var Choose = 1
var lang

func load_skins_data():
	var file = FileAccess.open("user://game_Settings.json",FileAccess.READ)
	var file_data = file.get_as_text()
	file.close()
	var json_data = JSON.parse_string(file_data)
	Choose = json_data["Choose"]
	lang = json_data["lang"]
	print(json_data)

func _ready():
	load_skins_data()


	


func _physics_process(delta):
	if Input.is_action_just_pressed("esc"):
		visible = false
	load_skins_data()
		
	if lang ==1:
		if Choose == 1:
			skin_n = "Su_85_rus"
		elif Choose == 2:
			skin_n = "Su_100Y_rus"
		elif Choose == 3:
			skin_n = "Su_152_rus"
		elif  Choose == 4:
			skin_n = "Isu-152_rus"
		elif  Choose == 5:
			skin_n = "Su122-54_rus"
		elif  Choose == 6:
			skin_n = "obj_268_rus"
		elif Choose == 7:
			skin_n = "obj_263_rus"
		elif Choose == 8:
			skin_n = "su152_6_rus"
	if lang == 0:		
		if Choose == 1:
			skin_n = "Su_85"
		elif Choose == 2:
			skin_n = "Su_100Y"
		elif Choose == 3:
			skin_n = "Su_152"
		elif  Choose == 4:
			skin_n = "Isu-152"
		elif  Choose == 5:
			skin_n = "Su122-54"
		elif  Choose == 6:
			skin_n = "obj_268"
		elif Choose == 7:
			skin_n = "obj_263"
		elif Choose == 8:
			skin_n = "su152_6"


func _on_texture_button_pressed():
	visible = false


func _on_faq_button_pressed():
	visible = true
	
	$MarginContainer/ColorRect/MarginContainer/AnimatedSprite2D2.play(skin_n)

