extends Node

@export_group("BG", "bg")
@export var bg_animationPlayer:AnimationPlayer = null

@export_group("UI", "ui")
@export_range(0, 3, 1.0, "suffix:option") var ui_selectedOption:int = 1


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if (bg_animationPlayer == null): bg_animationPlayer = get_child(0).get_child(0) as AnimationPlayer
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	bg_animationPlayer.play_section("default", 0.0, 0.01, -1, 0.0, false)
	pass


func _input(event: InputEvent) -> void:
	if (event.is_action_pressed("close_application")): get_tree().quit()
	pass
