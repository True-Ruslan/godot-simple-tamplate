extends Node

@onready var audio_manager: Node = $AudioManager
@onready var status_label: Label = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/StatusLabel
@onready var sound_a_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/SoundAButton
@onready var sound_b_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/SoundBButton
@onready var sound_c_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/SoundCButton

func _ready() -> void:
    sound_a_button.pressed.connect(_on_sound_a_pressed)
    sound_b_button.pressed.connect(_on_sound_b_pressed)
    sound_c_button.pressed.connect(_on_sound_c_pressed)
    audio_manager.audio_event_played.connect(_on_audio_event_played)

func _on_sound_a_pressed() -> void:
    audio_manager.play_event("ui_click")

func _on_sound_b_pressed() -> void:
    audio_manager.play_event("light_buzz")

func _on_sound_c_pressed() -> void:
    audio_manager.play_event("low_hit")

func _on_audio_event_played(event_id: String) -> void:
    status_label.text = "Played event: " + event_id
