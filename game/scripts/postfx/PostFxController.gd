extends CanvasLayer

@export var vignette_visible: bool = true
@export var grain_visible: bool = true
@export_range(0.0, 1.0, 0.05) var tint_alpha: float = 0.08
@export var tint_color: Color = Color(0.2, 0.16, 0.12, 1.0)

@onready var tint_rect: ColorRect = $TintRect
@onready var grain_rect: ColorRect = $GrainRect
@onready var vignette_rect: ColorRect = $VignetteRect

func _ready() -> void:
    apply_settings()

func apply_settings() -> void:
    tint_rect.color = Color(tint_color.r, tint_color.g, tint_color.b, tint_alpha)
    grain_rect.visible = grain_visible
    vignette_rect.visible = vignette_visible

func set_intensity(value: float) -> void:
    tint_alpha = clampf(value, 0.0, 1.0)
    apply_settings()
