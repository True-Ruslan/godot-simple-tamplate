extends Node

@onready var runner: Node = $DialogueRunner
@onready var start_button: Button = $DialoguePanel/Root/StartButton

func _ready() -> void:
    start_button.pressed.connect(_on_start_pressed)

func _on_start_pressed() -> void:
    runner.start()
