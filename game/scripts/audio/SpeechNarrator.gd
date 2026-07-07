extends Node

signal speech_started(text: String)

@export var preferred_language: String = "ru"
@export var voice_volume: int = 50
@export var voice_pitch: float = 1.0
@export var voice_rate: float = 1.0

var selected_voice_id: String = ""
var utterance_id: int = 1

func _ready() -> void:
    selected_voice_id = _find_voice_id(preferred_language)

func speak(text: String) -> void:
    if text.strip_edges() == "":
        return

    if selected_voice_id == "":
        selected_voice_id = _find_voice_id(preferred_language)

    if selected_voice_id == "":
        push_warning("No system voice found.")
        return

    DisplayServer.tts_speak(text, selected_voice_id, voice_volume, voice_pitch, voice_rate, utterance_id, true)
    utterance_id += 1
    speech_started.emit(text)

func stop() -> void:
    DisplayServer.tts_stop()

func get_available_voice_names() -> Array[String]:
    var result: Array[String] = []
    for voice in DisplayServer.tts_get_voices():
        result.append(str(voice.get("name", "unknown")) + " / " + str(voice.get("language", "unknown")))
    return result

func _find_voice_id(language: String) -> String:
    var voices := DisplayServer.tts_get_voices_for_language(language)
    if voices.size() == 0:
        voices = DisplayServer.tts_get_voices()

    if voices.size() == 0:
        return ""

    return str(voices[0].get("id", ""))
