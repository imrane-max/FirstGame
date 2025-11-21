extends Area2D

var levels = {
	"level1": "res://scense/levels/level1.tscn",
	"level2": "res://scense/levels/level2.tscn"
}
var arr = ["level1", "level2"]
var random_level = arr[randi() % arr.size()]


func _on_Door_body_entered(body):
	if body.name == "Player":
		var level_name = random_level
		if levels.has(level_name):
			get_tree().change_scene(levels[level_name])
