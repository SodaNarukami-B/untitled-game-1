extends CanvasLayer
class_name pause_menu_c

@onready var continue_button: Button = $continue_button
@onready var quit_button: Button = $quit_button

@export var is_paused: bool = false

signal paused()
signal unpaused()
signal quit_game()

# INFO: virtual methods
func _ready() -> void:
	visible = false;
	continue_button.pressed.connect(_on_continue)
	quit_button.pressed.connect(_on_quit)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		toggle_pause()


# INFO: public methods
func toggle_pause() -> void:
	if is_paused:
		visible = false;
		is_paused = false
		unpaused.emit()
	else:
		visible = true
		is_paused = true
		paused.emit()

# INFO: private methods
func _on_continue() -> void:
	if !is_paused:
		return

	toggle_pause()

func _on_quit() -> void:
	if !is_paused:
		return
	quit_game.emit()
