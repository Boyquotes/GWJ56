extends ColorRect

export(String, "Q", "W", "O", "P") var button

export var open = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = button
	pass # Replace with function body.

func play():

	$AnimationPlayer.play("New Anim")
	pass

func _input(event):
	if event.is_action_pressed(button):
		$Border.color = ColorN("black")
		if $AnimationPlayer.is_playing():
			if open:
				color = ColorN("yellow")
			else:
				color = ColorN("red")
			$AnimationPlayer.play("RESET")
		pass
	if event.is_action_released(button):
		$Border.color = ColorN("white")
		pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "New Anim":
		color = ColorN("red")
	pass # Replace with function body.
