extends Node2D

func cinematic():
	$Timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://Escenes/Pantalla principal 1.1.tscn")
