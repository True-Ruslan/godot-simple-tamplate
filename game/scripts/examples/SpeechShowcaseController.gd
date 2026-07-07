extends Node

@onready var narrator: Node = $SpeechNarrator
@onready var status_label: Label = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/StatusLabel
@onready var speak_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/SpeakButton
@onready var stop_button: Button = $CanvasLayer/Root/Panel/MarginContainer/VBoxContainer/StopButton

func _ready() -> void:
    speak_button.pressed.connect(_on_speak_pressed)
    stop_button.pressed.connect(_on_stop_pressed)

func _on_speak_pressed() -> void:
    var text := "Пример озвучивания текста в Godot."
    narrator.speak(text)
    status_label.text = "Voice requested."

func _on_stop_pressed() -> void:
    narrator.stop()
    status_label.text = "Voice stopped."
