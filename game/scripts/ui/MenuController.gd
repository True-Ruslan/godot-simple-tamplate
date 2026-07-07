extends CanvasLayer

signal start_requested

@onready var main_menu: Control = $Root/MainMenu
@onready var pause_menu: Control = $Root/PauseMenu
@onready var settings_menu: Control = $Root/SettingsMenu
@onready var start_button: Button = $Root/MainMenu/Panel/MarginContainer/VBoxContainer/StartButton
@onready var examples_button: Button = get_node_or_null("Root/MainMenu/Panel/MarginContainer/VBoxContainer/ExamplesButton") as Button
@onready var main_settings_button: Button = $Root/MainMenu/Panel/MarginContainer/VBoxContainer/SettingsButton
@onready var resume_button: Button = $Root/PauseMenu/Panel/MarginContainer/VBoxContainer/ResumeButton
@onready var pause_settings_button: Button = $Root/PauseMenu/Panel/MarginContainer/VBoxContainer/SettingsButton
@onready var sensitivity_slider: HSlider = $Root/SettingsMenu/Panel/MarginContainer/VBoxContainer/SensitivitySlider
@onready var volume_slider: HSlider = $Root/SettingsMenu/Panel/MarginContainer/VBoxContainer/VolumeSlider
@onready var back_button: Button = $Root/SettingsMenu/Panel/MarginContainer/VBoxContainer/BackButton

var is_main_menu_active: bool = true
var return_to_pause_menu: bool = false

func _ready() -> void:
    process_mode = Node.PROCESS_MODE_ALWAYS

    start_button.pressed.connect(_on_start_pressed)
    if examples_button != null:
        examples_button.pressed.connect(_on_examples_pressed)
    main_settings_button.pressed.connect(_on_main_settings_pressed)
    resume_button.pressed.connect(_on_resume_pressed)
    pause_settings_button.pressed.connect(_on_pause_settings_pressed)
    sensitivity_slider.value_changed.connect(_on_sensitivity_changed)
    volume_slider.value_changed.connect(_on_volume_changed)
    back_button.pressed.connect(_on_back_pressed)
    GameState.game_paused_changed.connect(_on_game_paused_changed)

    sensitivity_slider.value = GameState.mouse_sensitivity
    volume_slider.value = db_to_linear(AudioServer.get_bus_volume_db(AudioServer.get_bus_index("Master")))

    show_main_menu()

func show_main_menu() -> void:
    is_main_menu_active = true
    GameState.set_start_menu_active(true)
    get_tree().paused = true
    Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
    _show_only(main_menu)
    start_button.grab_focus()

func show_pause_menu() -> void:
    if is_main_menu_active:
        return
    Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
    _show_only(pause_menu)
    resume_button.grab_focus()

func hide_all_menus() -> void:
    main_menu.visible = false
    pause_menu.visible = false
    settings_menu.visible = false

func _show_only(menu: Control) -> void:
    main_menu.visible = menu == main_menu
    pause_menu.visible = menu == pause_menu
    settings_menu.visible = menu == settings_menu

func _on_start_pressed() -> void:
    is_main_menu_active = false
    GameState.set_start_menu_active(false)
    hide_all_menus()
    start_requested.emit()
    GameState.set_pause(false)

func _on_examples_pressed() -> void:
    GameState.set_start_menu_active(false)
    get_tree().paused = false
    get_tree().change_scene_to_file("res://game/scenes/examples/ExampleIndex.tscn")

func _on_resume_pressed() -> void:
    hide_all_menus()
    GameState.set_pause(false)

func _on_main_settings_pressed() -> void:
    return_to_pause_menu = false
    _show_only(settings_menu)
    sensitivity_slider.grab_focus()

func _on_pause_settings_pressed() -> void:
    return_to_pause_menu = true
    _show_only(settings_menu)
    sensitivity_slider.grab_focus()

func _on_back_pressed() -> void:
    if is_main_menu_active and not return_to_pause_menu:
        _show_only(main_menu)
        main_settings_button.grab_focus()
    else:
        _show_only(pause_menu)
        pause_settings_button.grab_focus()

func _on_sensitivity_changed(value: float) -> void:
    GameState.set_mouse_sensitivity(value)

func _on_volume_changed(value: float) -> void:
    var master_bus := AudioServer.get_bus_index("Master")
    AudioServer.set_bus_volume_db(master_bus, linear_to_db(maxf(value, 0.001)))

func _on_game_paused_changed(is_paused: bool) -> void:
    if is_main_menu_active:
        return

    if is_paused:
        show_pause_menu()
    else:
        hide_all_menus()
