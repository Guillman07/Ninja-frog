extends Node2D

func new_game():
	#$Node2D/KinematicBody2D.start($Node2D/Position2DPosition2D.position)
	#$Interface.show_message("Lets goo!")
	pass
func game_over():
	get_tree().change_scene("res://Escenes/Pantalla principal 1.1.tscn")
	

func _on_saw_body_entered(body):
	game_over()
	#$Node2D/KinematicBody2D.hide()
	#$KinematicBody2D.emit_signal("hit")
	
	
func _on_Spikes_body_entered(body):
	game_over()
	#$Node2D/KinematicBody2DKinematicBody2D.hide()
	#$Node2D/KinematicBody2DKinematicBody2D.emit_signal("hit")
	
	
func _on_fire_body_entered(body):
	game_over()
	#$KinematicBody2D.hide()
	#$KinematicBody2D.emit_signal("hit")
	


func _on_Spiked_ball_body_entered(body):
	game_over()
	#$KinematicBody2D.hide()
	#$KinematicBody2D.emit_signal("hit")



