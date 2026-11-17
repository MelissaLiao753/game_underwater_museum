extends Node2D
@onready var music_player: Button = $Music_Player


func _on_start_pressed() -> void:
	menu_music.stop()
	get_tree().change_scene_to_file("res://level.tscn")

func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://credits.tscn")

func _on_instructions_pressed() -> void:
	get_tree().change_scene_to_file("res://introduction.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
	

func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play() 


	


func _on_music_player_pressed() -> void:
	if menu_music.playing:
		music_player.text = "Play Music"
		menu_music.stop()
	else:
		menu_music.play()
		music_player.text = "Stop Music"
