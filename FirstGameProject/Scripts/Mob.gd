extends RigidBody2D

export var min_speed = 950  # Minimum speed range.
export var max_speed = 1050  # Maximum speed range.
var mob_types = ["walk", "swim", "fly"]

func _ready():
    $AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


func _on_Visibility_screen_exited():
    queue_free()
