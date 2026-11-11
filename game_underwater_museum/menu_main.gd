extends Node2D

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://level.tscn")


func _on_introducton_pressed() -> void:
	get_tree().change_scene_to_file("res://introduction.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
	
func _on_AudioStreamPlayer_finished():
	$AudioStreamPlayer.play() 

func _on_Stop_Music_pressed():
	$AudioStreamPlayer.stop()
	
