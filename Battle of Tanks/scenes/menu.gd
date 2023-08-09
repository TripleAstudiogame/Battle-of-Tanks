extends Control

@export var lang = 0
@export var lvl = 1
@export var lvl_choose = 0
	
var Setting_value = {
	"lang": lang,
	"lvl": lvl,
	"lvl_choose": lvl_choose,
	"Choose": 1,
	"skins": "Su_85",
	"skins_name": "text",
	"purchase": 1,
	"rublcoin": 0,
	"pvo": 0,
	"arteleria": 0,
	"experience": 0
	}
	
func save_game_settings():
	var file =FileAccess.open("user://game_Settings.json",FileAccess.READ)
	if file:
		var data = file.get_as_text()
		file.close()
		var update_data = JSON.parse_string(data)
		update_data["lang"] = lang
		update_data["lvl"] = lvl
		update_data["lvl_choose"] = lvl_choose
		var save_data = JSON.stringify(update_data)
		var save_file = FileAccess.open("user://game_Settings.json",FileAccess.WRITE)
		save_file.store_string(save_data)
		save_file.close()
		print("Успешно")
	else:
		print("Error 404")


func load_game_settings():
	var file = FileAccess.open("user://game_Settings.json",FileAccess.READ)
	if file:
		var data = file.get_as_text()
		file.close()
		var data_json = JSON.parse_string(data)
		lang = data_json["lang"]
		lvl = data_json["lvl"]
		lvl_choose= data_json["lvl_choose"]
	else:
		print("Error 404")
		
func _ready():
	if FileAccess.file_exists("user://game_Settings.json"):
		load_game_settings()
	else:
		var file = FileAccess.open("user://game_Settings.json",FileAccess.WRITE)
		var data_json = JSON.stringify(Setting_value)
		file.store_string(data_json)
		file.close()
		print("havent")



#levels choose
#lvl1
func _on_lvl_1_pressed():
	lvl_choose = 1
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")

#lvl2
func _on_lvl_2_pressed():
	lvl_choose = 2
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")

#lvl3
func _on_lvl_3_pressed():
	lvl_choose = 3
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")
	
#lvl4
func _on_lvl_4_pressed():
	lvl_choose = 4
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")
	
#lvl5
func _on_lvl_5_pressed():
	lvl_choose = 5
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")

#lvl 6
func _on_lvl_6_pressed():
	lvl_choose = 6
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")
	
#lvl 7
func _on_lvl_7_pressed():
	lvl_choose = 7
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")

#lvl 8
func _on_lvl_8_pressed():
	lvl_choose = 8
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")
	
#lvl9
func _on_lvl_9_pressed():
	lvl_choose = 9
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")

#lvl10
func _on_lvl_10_pressed():
	lvl_choose = 10
	save_game_settings()
	get_tree().change_scene_to_file("res://scenes/choose_tanks.tscn")

	

#language_settings
func _on_rus_pressed():
	#ru
	lang = 1
	save_game_settings()
	print("rus")


func _on_eng_pressed():
	lang = 0
	save_game_settings()
	print("eng")
	
	
	
func _physics_process(delta):
	#lvl_open
	if lvl == 1:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl1-5/lvl1".disabled = false
		
	if lvl >= 2:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl1-5/lvl2".disabled = false
		
	if lvl >= 3:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl1-5/lvl3".disabled = false
	
	if lvl >= 4:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl1-5/lvl4".disabled = false
		
	if lvl >= 5:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl1-5/lvl5".disabled = false
		
	if lvl >= 6:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl6-10/lvl6".disabled = false
		
	if lvl >= 7:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl6-10/lvl7".disabled = false
	
	if lvl >= 8:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl6-10/lvl8".disabled = false
		
	if lvl >= 9:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl6-10/lvl9".disabled = false
		
	if lvl >= 10:
		$"Menu/Vbox/Lvlfon/Lvls/Vlvls/lvl6-10/lvl10".disabled = false

