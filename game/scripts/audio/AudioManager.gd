extends Node

signal audio_event_played(event_id: String)

@export var default_volume_db: float = -8.0
@export var default_duration: float = 0.25

var active_players: Array[AudioStreamPlayer] = []

func play_event(event_id: String) -> void:
    match event_id:
        "ui_click":
            play_tone(event_id, 660.0, 0.08, -12.0)
        "door_knock":
            play_tone(event_id, 140.0, 0.16, -8.0)
        "chalk_scratch":
            play_tone(event_id, 880.0, 0.18, -14.0)
        "low_hit":
            play_tone(event_id, 80.0, 0.35, -6.0)
        "light_buzz":
            play_tone(event_id, 55.0, 0.3, -16.0)
        _:
            play_tone(event_id, 440.0, default_duration, default_volume_db)

    audio_event_played.emit(event_id)

func play_tone(_event_id: String, frequency: float, duration: float, volume_db: float) -> void:
    var player := AudioStreamPlayer.new()
    var stream := AudioStreamGenerator.new()
    stream.mix_rate = 22050.0
    stream.buffer_length = maxf(duration + 0.1, 0.2)
    player.stream = stream
    player.volume_db = volume_db
    add_child(player)
    player.play()

    var playback := player.get_stream_playback() as AudioStreamGeneratorPlayback
    if playback != null:
        var total_frames := int(stream.mix_rate * duration)
        var phase := 0.0
        for _i in range(total_frames):
            var envelope := 1.0 - (float(_i) / float(maxi(total_frames, 1)))
            var sample := sin(phase * TAU) * envelope
            playback.push_frame(Vector2(sample, sample))
            phase += frequency / stream.mix_rate

    active_players.append(player)
    await get_tree().create_timer(duration + 0.1).timeout
    if is_instance_valid(player):
        player.queue_free()
    active_players.erase(player)
