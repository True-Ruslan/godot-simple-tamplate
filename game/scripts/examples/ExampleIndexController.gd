extends Node

@onready var audio_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/AudioButton
@onready var speech_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/SpeechButton
@onready var dialogue_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/DialogueButton
@onready var postfx_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/PostFxButton
@onready var back_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/BackButton

func _ready() -> void:
    Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
    get_tree().paused = false

    audio_button.pressed.connect(func() -> void: _open_scene("res://game/scenes/examples/AudioShowcase.tscn"))
    speech_button.pressed.connect(func() -> void: _open_scene("res://game/scenes/examples/SpeechShowcase.tscn"))
    dialogue_button.pressed.connect(func() -> void: _open_scene("res://game/scenes/examples/DialogueShowcase.tscn"))
    postfx_button.pressed.connect(func() -> void: _open_scene("res://game/scenes/examples/PostFxShowcase.tscn"))
    back_button.pressed.connect(func() -> void: _open_scene("res://game/scenes/Main.tscn"))

    audio_button.grab_focus()

func _open_scene(scene_path: String) -> void:
    get_tree().change_scene_to_file(scene_path)
