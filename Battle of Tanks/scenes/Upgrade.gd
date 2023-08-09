extends Control
var rublcoin 
var pvo = 0
var arteleria = 0
var experience = 0
var lang
var price_pvo
var price_art
var price_exp

# Called when the node enters the scene tree for the first time.
func _ready():
	load_game_value()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if arteleria == 3:
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/artileria_buy_button.visible = false
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.visible = false
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/TextureRect.visible = false
	if pvo == 3:
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/Button.visible = false
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.visible = false
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/TextureRect.visible = false
	if experience == 3:
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/exp_buy_button.visible = false
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.visible = false
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/TextureRect.visible = false
	
	$MarginContainer/VBoxContainer/HBoxContainer2/RUBL_ICON/MarginContainer/mONEY_POINT.text = str(rublcoin)
	if lang == 1:
		$MarginContainer/VBoxContainer/HBoxContainer2/Upgrade/MarginContainer/Upgrade.text = "Назад"
		$MarginContainer/VBoxContainer/HBoxContainer2/Upgrade_label.text = "Улучшение"
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/Anti_air.text = "ПВО"
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/Button.text = "КУПИТЬ"
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/ARTILLERY.text = "Артиллерия"
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/lvl.text = "УРОВЕНЬ 1"
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/artileria_buy_button.text = "КУПИТЬ"
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/EXP.text = "ОПЫТ+"
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/lvl.text = "УРОВЕНЬ 1"
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/exp_buy_button.text = "КУПИТЬ"
		
		
		
	if lang == 0: 
		$MarginContainer/VBoxContainer/HBoxContainer2/Upgrade/MarginContainer/Upgrade.text = "GO BACK"
		$MarginContainer/VBoxContainer/HBoxContainer2/Upgrade_label.text = "upgrade"
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/Anti_air.text = "Anti-air defense"
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/Button.text = "buy"
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/ARTILLERY.text = "ARTILLERY"
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/lvl.text = "lvl 1"
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/artileria_buy_button.text = "buy"
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/EXP.text = "EXP+"
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/lvl.text = "lvl 1"
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/exp_buy_button.text = "buy"
		
	#pvo
	if pvo == 0:
		$"MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/Anit-air_phto".play("lvl1")
		price_pvo = 300
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.text = str(price_pvo)
		#buy color
		if rublcoin<price_pvo:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.modulate = Color(255,0,0)
		elif rublcoin>=price_pvo:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.modulate = Color(255,255,255)
		#lang
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/lvl.text = "lvl 1"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/lvl.text = "УРОВЕНЬ 1"
	elif pvo == 1:
		$"MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/Anit-air_phto".play("lvl2")
		price_pvo = 1000
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.text = str(price_pvo)
		if rublcoin<price_pvo:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.modulate = Color(255,0,0)
		elif rublcoin>=price_pvo:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.modulate = Color(255,255,255)
		#lang
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/lvl.text = "lvl 2"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/lvl.text = "УРОВЕНЬ 2"
	else :
		$"MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/Anit-air_phto".play("lvl3")	
		price_pvo = 2500
		$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.text = str(price_pvo)
		if rublcoin<price_pvo:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.modulate = Color(255,0,0)
		elif rublcoin>=price_pvo:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/price_air.modulate = Color(255,255,255)
			#lang
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/lvl.text = "lvl 3"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/Antiairbox/lvl.text = "УРОВЕНЬ 3"
	#exp
	if experience ==0:
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/exp.play("lvl1")
		price_exp = 300
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.text = str(price_exp)
		if rublcoin<price_exp:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.modulate = Color(255,0,0)
		elif rublcoin>=price_exp:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.modulate = Color(255,255,255)	
		#lang
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/lvl.text = "lvl 1"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/lvl.text = "УРОВЕНЬ 1"
	elif experience ==1:
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/exp.play("lvl2")
		price_exp = 1000
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.text = str(price_exp)
		if rublcoin<price_exp:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.modulate = Color(255,0,0)
		elif rublcoin>=price_exp:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.modulate = Color(255,255,255)
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/lvl.text = "lvl 2"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/lvl.text = "УРОВЕНЬ 2"
	else:
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/exp.play("lvl3")	
		price_exp = 2500
		$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.text = str(price_exp)
		if rublcoin<price_exp:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.modulate = Color(255,0,0)
		elif rublcoin<price_exp:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/price_exp.modulate = Color(255,255,255)
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/lvl.text = "lvl 3"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/EXP/lvl.text = "УРОВЕНЬ 3"	
	#exp
	if arteleria == 0:
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/Artileru.play("lvl1")
		price_art= 300.
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.text = str(price_art)
		if rublcoin<price_art:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.modulate = Color(255,0,0)
		elif rublcoin>= price_art:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.modulate = Color(255,255,255)
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/lvl.text = "lvl 1"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/lvl.text = "УРОВЕНЬ 1"
	elif arteleria == 1:
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/Artileru.play("lvl2")
		price_art = 1000
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.text = str(price_art)
		if rublcoin<price_art:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.modulate = Color(255,0,0)
		elif rublcoin>= price_art:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.modulate = Color(255,255,255)
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/lvl.text = "lvl 2"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/lvl.text = "УРОВЕНЬ 2"
	else :
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/Artileru.play("lvl3")
		price_art= 2500
		$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.text = str(price_art)
		if rublcoin<price_art:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.modulate = Color(255,0,0)
		elif rublcoin>= price_art:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/price_art.modulate = Color(255,255,255)
		if lang == 0:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/lvl.text = "lvl 3"
		if lang == 1:
			$MarginContainer/VBoxContainer/HBoxContainer/ARTILERIY/lvl.text = "УРОВЕНЬ 3"
		
	
func load_game_value():
	var file = FileAccess.open("user://game_Settings.json", FileAccess.READ)
	if file:
		var filee_settings_value = file.get_as_text()
		file.close()
		var json_data = JSON.parse_string(filee_settings_value)
		rublcoin = json_data["rublcoin"]
		lang = json_data["lang"]
		pvo = json_data["pvo"]
		arteleria = json_data["arteleria"]
		experience = json_data["experience"]
	else:
		print("Error 404")
		
func save_game():
	var file = FileAccess.open("user://game_Settings.json", FileAccess.READ)
	if file:
		var filee_settings_value = file.get_as_text()
		file.close()
		var json = JSON.parse_string(filee_settings_value)
		json["rublcoin"] = rublcoin
		json["pvo"] = pvo
		json["arteleria"] = arteleria
		json["experience"] = experience
		var file_save = FileAccess.open("user://game_Settings.json", FileAccess.WRITE)
		var json_data = JSON.stringify(json)
		file_save.store_string(json_data)
		file_save.close()	
	else:
		print("Error 404")
	
	

func _on_upgrade_pressed():
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")

#pvo
func _on_button_pressed():
	if rublcoin<price_pvo:
		pass
	elif rublcoin>= price_pvo:
		rublcoin -= price_pvo
		pvo += 1
		save_game()
#exp
func _on_exp_buy_button_pressed():
	if rublcoin<price_exp:
		pass
	elif rublcoin>= price_exp:
		rublcoin -= price_exp
		experience += 1
		save_game()

#art
func _on_artileria_buy_button_pressed():
	if rublcoin<price_art:
		pass
	elif rublcoin>= price_art:
		rublcoin -= price_art
		arteleria += 1
		save_game()
