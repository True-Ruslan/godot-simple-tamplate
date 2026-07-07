extends Node

@export_file("*.tscn") var hub_scene_path: String = "res://game/scenes/examples/IntegrationHub.tscn"

func _ready() -> void:
    process_mode = Node.PROCESS_MODE_ALWAYS
    get_tree().paused = false
    Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _unhandled_input(event: InputEvent) -> void:
    if event.is_action_pressed("close_message"):
        get_tree().change_scene_to_file(hub_scene_path)
