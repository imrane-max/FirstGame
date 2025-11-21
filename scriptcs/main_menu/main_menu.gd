extends Control

onready var click_sfx = $click_sfx1


func _on_Playe_pressed():
	click_sfx.play()
	click_sfx.connect("finished", self, "_go")

func _go():
	get_tree().change_scene("res://scense/levels/level1.tscn")


func _on_Quit_pressed():
	click_sfx.play()
	click_sfx.connect("finished", self, "_quit_app")

func _quit_app():
	get_tree().quit()
