extends Control

func _on_settings_but_pressed():
	visible = true

func _on_back_but_pressed():
	visible = false
	
func _physics_process(delta):
	
	if Input.is_action_just_pressed("esc"):
		visible = not visible


