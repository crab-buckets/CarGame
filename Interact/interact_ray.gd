extends RayCast3D

@onready var prompt = $Prompt

func _physics_process(_delta):
	prompt.text = ""
	
	if is_colliding():
		var collider = get_collider()

		if collider is Interactable:
			prompt.text = collider.prompt_message
