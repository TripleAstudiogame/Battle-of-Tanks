extends Control


func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://G_g.tscn")


func _on_upgrade_pressed():
	get_tree().change_scene_to_file("res://scenes/Upgrade.tscn")
var skins_statistic
var lang	
var price = 0
var Choose = 1
var rublcoin = 0
var skins
var skins_name
var purchase = 1

func _on_chose_left_but_pressed():
	Choose -= 1
	save_game_value()
	

	
func _on_chose_right_but_pressed():
	Choose += 1
	save_game_value()




func _on_buy_button_pressed():
	if rublcoin>= price:
		rublcoin -= price
		purchase += 1
		save_game_value()
	elif rublcoin < price:
		pass
	save_game_value()

func save_game_value():
	var update_file = FileAccess.open("user://game_Settings.json",FileAccess.READ)
	if update_file:
		var data = update_file.get_as_text()
		update_file.close()
		var json_update= JSON.parse_string(data)
		json_update["rublcoin"] = rublcoin
		json_update["Choose"] = Choose
		json_update["skins"] = skins
		json_update["skins_name"] = skins_name
		json_update["purchase"] = purchase
		var file_save = FileAccess.open("user://game_Settings.json",FileAccess.WRITE)
		var json_save = JSON.stringify(json_update)
		file_save.store_string(json_save)
		file_save.close()
		print("succes")
	else:
		print("error 404")
	
func load_game_value():
	var file = FileAccess.open("user://game_Settings.json",FileAccess.READ)
	if file:
		var data = file.get_as_text()
		file.close()
		var json_data = JSON.parse_string(data)
		Choose = json_data["Choose"]
		skins = json_data["skins"]
		skins_name = json_data["skins_name"]
		purchase = json_data["purchase"]
		rublcoin = json_data["rublcoin"]
		lang =  json_data["lang"]
		print(json_data)
	else:
		print("Error 404")

func _ready():
	load_game_value()
	

	


func _physics_process(delta):
	
	#start button diabled
	if Choose > purchase:
		$MarginContainer/VBoxContainer/HBoxContainer2/start_button.disabled = true
	if Choose<= purchase:
		$MarginContainer/VBoxContainer/HBoxContainer2/start_button.disabled = false
		
	if lang == 1:
		$MarginContainer/VBoxContainer/HBoxContainer/Choose_tank_text.text = "ВЫБОР ТАНКОВ"
		$MarginContainer/VBoxContainer/HBoxContainer/Upgrade/MarginContainer/Upgrade.text = "УЛУЧШЕНИЕ"
		skins_statistic = skins+"_rus"
	if lang == 0:
		$MarginContainer/VBoxContainer/HBoxContainer/Choose_tank_text.text = "CHOOSE TANK"
		$MarginContainer/VBoxContainer/HBoxContainer/Upgrade/MarginContainer/Upgrade.text = "UPGRADE"
		skins_statistic = skins
	#color of buy
	if rublcoin < price:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button/RUBL_ICON/MarginContainer/price_of_tanks.modulate = Color(255,0,0)
		
	$MarginContainer/VBoxContainer/HBoxContainer/RUBL_ICON/MarginContainer/mONEY_POINT.text = str(rublcoin)
	$MarginContainer/Sprite2D/MarginContainer/Buy_button/RUBL_ICON/MarginContainer/price_of_tanks.text = str(price)
	#buy_button_off
	if Choose == 1 and purchase == 1:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.visible = false
	if Choose == 2:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.visible = purchase<2
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.disabled = purchase<1
	if Choose == 3:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.visible = purchase<3
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.disabled = purchase<2
	if Choose == 4:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.visible = purchase<4
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.disabled = purchase<3
	if Choose == 5:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.visible = purchase<5
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.disabled = purchase<4
	if Choose == 6:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.visible = purchase<6
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.disabled = purchase<5
	if Choose == 7:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.visible = purchase<7	
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.disabled = purchase<6	
	if Choose == 8:
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.visible = purchase<8
		$MarginContainer/Sprite2D/MarginContainer/Buy_button.disabled = purchase<7
		
	#skins choose
	if Choose == 1:
		$MarginContainer2/Sprite2D.visible = false
		skins = "Su_85"
		#LANG
		if lang == 1:
			skins_name = "СУ-85"
		if lang == 0:
			skins_name = "Su-85"
		price = 0
		save_game_value()
	elif Choose == 2:
		skins = "Su_100Y"
		#LANG
		if lang == 1:
			skins_name = "СУ-100Y"
		if lang ==0:
			skins_name = "Su-100Y"
		
		price = 450
		save_game_value()
	elif Choose == 3:
		skins = "Su_152"
		#LANG
		if lang == 1:
			skins_name = "СУ-152"
		if lang == 0:
			skins_name = "Su-152"
		
		price = 750
		save_game_value()
	elif  Choose == 4:
		skins = "Isu-152"
		
		#LANG
		if lang == 1:
			skins_name = "ИСУ-152"
		if lang == 0:
			skins_name = "Isu-152"
			
		price = 1200
		save_game_value()
	elif  Choose == 5:
		skins = "Su122-54"
		
		#LANG
		if lang == 1:
			skins_name = "СУ-122-54"
		if lang == 0:
			skins_name = "Su-122-54"
			
		price = 1600
		save_game_value()
	elif  Choose == 6:
		skins = "obj_268"
		
			#LANG
		if lang == 1:
			skins_name = "ОБЬЕКТ-268"
		if lang == 0:
			skins_name = "obj-268"
			
		price = 2680
		save_game_value()
	elif Choose == 7:
		$MarginContainer2/Sprite2D.visible = false
		$MarginContainer2/AnimatedSprite2D.visible = true
		skins = "obj_263"

			#LANG
		if lang == 1:
			skins_name = "ОБЬЕКТ-263"
		if lang == 0:
			skins_name = "obj-263"
			
		price = 3200
		save_game_value()
		
	elif Choose == 8:
		skins = "su_152_6"
			#LANG
		if lang == 1:
			skins_name = "СУ-152-6"
		if lang == 0:
			skins_name = "SU-152-6"
			
		price = 9999
		$MarginContainer2/AnimatedSprite2D.visible = false
		$MarginContainer2/Sprite2D.visible = true
		$MarginContainer2/Sprite2D/Name_of_tnaks.text = skins_name
		save_game_value()
	else:
		get_tree().quit()
	
	#off left button
	if Choose <= 1:
		$MarginContainer/VBoxContainer/HBoxContainer3/Chose_left_but.disabled = true
	else:
		$MarginContainer/VBoxContainer/HBoxContainer3/Chose_left_but.disabled = false
		
	#of right button
	if Choose >= 8:
		$MarginContainer/VBoxContainer/HBoxContainer3/Chose_right_but.disabled = true
	else:
		$MarginContainer/VBoxContainer/HBoxContainer3/Chose_right_but.disabled = false
		
	$MarginContainer2/AnimatedSprite2D/Name_of_tnaks.text = skins_name
	$MarginContainer2/AnimatedSprite2D.play(skins)
	$MarginContainer3/Tanks_statistic.play(skins_statistic)
	if Choose == 8:
		if lang == 1:
			$MarginContainer3/Tanks_statistic.play("su152_6_rus")
		if lang ==0:
			$MarginContainer3/Tanks_statistic.play("su152_6")
		$Faq_scene/MarginContainer/ColorRect/MarginContainer/AnimatedSprite2D2.play(skins)




