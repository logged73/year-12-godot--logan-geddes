extends CharacterBody3D

@onready var nav_agent = $NavigationAgent3D
@onready var player =  get_tree().get_first_node_in_group("Player")

var movement_speed = 7.5

func _ready():
	call_deferred("get_target")
	
func get_target():
	nav_agent.target_position = player.global_transform.origin
	
func _physics_process(delta):
	if nav_agent.is_navigation_finished():
		get_target()
		
	var current_agent_postion = global_position
	var next_postion = nav_agent.get_next_path_position()
	var new_velocity = next_postion - current_agent_postion
	new_velocity =  new_velocity.normalized() *  movement_speed
	
	velocity = new_velocity
	move_and_slide()
