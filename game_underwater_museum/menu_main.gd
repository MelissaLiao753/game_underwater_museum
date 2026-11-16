extends Node2D
@onready var music_player: Button = $AudioStreamPlayer/Music_Player

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://level.tscn")

func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://credits.tscn")

func _on_introduction_pressed() -> void:
	get_tree().change_scene_to_file("res://introduction.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
	

func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play() 


	


func _on_music_player_pressed() -> void:
	if $AudioStreamPlayer.playing:
		music_player.text = "Play Music"
		$AudioStreamPlayer.stop()
	else:
		$AudioStreamPlayer.play()
		music_player.text = "Stop Music"
