extends Area3D

@export var event_id: String = "ui_click"
@export var play_once: bool = true
@export var auto_play_on_ready: bool = false

var has_played: bool = false
var audio_manager: Node = null

func _ready() -> void:
    audio_manager = get_node_or_null("/root/AudioManager")
    if audio_manager == null:
        audio_manager = get_tree().current_scene.find_child("AudioManager", true, false)

    body_entered.connect(_on_body_entered)

    if auto_play_on_ready:
        play()

func play() -> void:
    if play_once and has_played:
        return

    has_played = true

    if audio_manager != null and audio_manager.has_method("play_event"):
        audio_manager.play_event(event_id)

func _on_body_entered(_body: Node3D) -> void:
    play()
