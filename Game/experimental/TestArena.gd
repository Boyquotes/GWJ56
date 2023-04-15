extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var allKeys = [$KeyAnim,$KeyAnim2,$KeyAnim3,$KeyAnim4]
var currentKeys = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func play_random():
	var newKeys = []
	var keyCount = randi()%2 + 1 # one or two keys
	var freeKeys = allKeys.duplicate() 
	for a in currentKeys:
		freeKeys.erase(a) #remove current keys from the list
	while keyCount > 0:
		keyCount -= 1
		newKeys.push_back(freeKeys[randi()%freeKeys.size()])
	currentKeys = newKeys
	for k in newKeys:
		k.play()
	pass

func _on_Timer_timeout():
	play_random()
	pass # Replace with function body.
