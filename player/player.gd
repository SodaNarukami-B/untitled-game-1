extends Node2D
class_name active_player

signal player_stats_updated(stats: Dictionary[String, float])
signal player_dead()

signal use_hand_item(item: 

@onready var pause_menu: pause_menu_c = $CanvasLayer

@export var player_stats: Dictionary[String, float] = {
	"health": 100.0,
	"stamina": 100.0
	}

# INFO: Player control and values logic
func _physics_process(delta: float) -> void:
	# TODO:
	# here must be moving module
	# ...
	# if stamina != 100 then do operation like stamina = clamp(stamine + stamina_growth_val, 0.0, 100.0)
	# ...
	# You also need to realize dashes. Like player speed is multipling by 2 when player pressed shift. IDK how make its better so DIY
	# Dashes cost 50 stamia
	# ...
	# AND BRO PLEASE DO **NOT** PUT ALL YOUR FUCKING CODE IN ONE FUNCTION
	pass

# INFO: Pause menu calls

func _on_pause():
	get_tree().paused = true;

func _on_unpaused():
	get_tree().paused = false;

func _on_pause_quit():
	get_tree().quit();



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pause_menu.paused.connect(_on_pause)
	pause_menu.unpaused.connect(_on_unpaused)
	pause_menu.quit_game.connect(_on_pause_quit)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
