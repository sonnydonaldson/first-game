extends Node2D
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastleft
@onready var raycastdown: RayCast2D = $raycastdown
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
var direction = -1
var SPEED = 50



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if ray_cast_left.is_colliding():
		direction = 1
	elif ray_cast_right.is_colliding():
		direction = -1
	elif not raycastdown.is_colliding():
		direction *= -1
	if direction == 1:
		animated_sprite_2d.flip_h = false
	elif  direction == -1:
		animated_sprite_2d.flip_h = true
	position.x += SPEED * delta * direction
	
