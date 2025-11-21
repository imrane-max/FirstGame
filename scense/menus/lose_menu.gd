extends Control

onready var click_sfx = $click_sfx


func _on_Restart_pressed():
	click_sfx.play()
	click_sfx.connect("finished", self, "_restart_scene")

func _restart_scene():
	get_tree().change_scene("res://scense/levels/level1.tscn")

func _on_main_menu_pressed():
	click_sfx.play()
	click_sfx.connect("finished", self, "_go_main_menu")

func _go_main_menu():
	get_tree().change_scene("res://scense/main_menu/main_menu.tscn")

