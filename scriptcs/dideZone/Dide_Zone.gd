extends Area2D

var speed = 70



func _process(delta):
	position.y -= speed * delta

func _on_Dide_Zone_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scense/menus/lose_menu.tscn")
