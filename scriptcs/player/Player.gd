extends KinematicBody2D

var speed = 200
var jump_force = -359
var double_jump = true
var gravity = 900
var velocity = Vector2.ZERO
onready var jump_sfx = $Jump
onready var spawn_sfx = $spawn
func _ready():
	spawn_sfx.play()
	pass

func _physics_process(delta):
	velocity.x = 0

	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$Sprite.flip_h = false
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		$Sprite.flip_h = true

	if is_on_floor() and  Input.is_action_just_pressed("jump"):
		velocity.y = jump_force
		double_jump = true
		jump_sfx.play()


	if double_jump == true and Input.is_action_just_pressed("ui_accept") and !is_on_floor():
		velocity.y = jump_force
		jump_sfx.play()
	if is_on_floor():
		double_jump = true
	
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://scense/main_menu/main_menu.tscn")
	
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	

