extends CanvasLayer

@export var target_scene_path: String = "res://game/scenes/examples/ExampleIndex.tscn"

@onready var return_button: Button = $Root/ReturnButton

func _ready() -> void:
    process_mode = Node.PROCESS_MODE_ALWAYS
    Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
    return_button.pressed.connect(_on_return_pressed)

func _on_return_pressed() -> void:
    get_tree().paused = false
    get_tree().change_scene_to_file(target_scene_path)
