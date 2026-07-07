extends StaticBody3D

@export var open_text: String = "E — открыть дверь"
@export var close_text: String = "E — закрыть дверь"
@export var locked_text: String = "Заперто."
@export var is_locked: bool = false
@export var required_event_id_to_unlock: String = ""
@export var objective_after_locked_check: String = ""
@export var open_angle_degrees: float = 90.0
@export var animation_speed: float = 6.0
@export var objective_after_open: String = "Осмотреть комнату за дверью."
@export var completion_title_after_open: String = ""
@export_multiline var completion_body_after_open: String = ""

var is_open: bool = false
var closed_rotation_y: float = 0.0
var target_rotation_y: float = 0.0
var completion_message_shown: bool = false

func _ready() -> void:
    closed_rotation_y = rotation.y
    target_rotation_y = closed_rotation_y

func _process(delta: float) -> void:
    rotation.y = lerp_angle(rotation.y, target_rotation_y, minf(1.0, animation_speed * delta))

func get_interaction_text() -> String:
    if _is_locked_by_state():
        return "E — проверить дверь"
    return close_text if is_open else open_text

func interact(_actor: Node = null) -> void:
    if _is_locked_by_state():
        GameState.show_message("Дверь", locked_text)
        if objective_after_locked_check.strip_edges() != "":
            ObjectiveManager.complete_current_objective(objective_after_locked_check)
        return

    is_open = not is_open
    target_rotation_y = closed_rotation_y + deg_to_rad(open_angle_degrees if is_open else 0.0)

    if is_open and objective_after_open.strip_edges() != "":
        ObjectiveManager.complete_current_objective(objective_after_open)

    if is_open and not completion_message_shown and completion_body_after_open.strip_edges() != "":
        completion_message_shown = true
        GameState.show_message(completion_title_after_open, completion_body_after_open)

func _is_locked_by_state() -> bool:
    if is_locked:
        return true
    if required_event_id_to_unlock.strip_edges() != "" and not HorrorEventManager.has_played(required_event_id_to_unlock):
        return true
    return false
