extends Node2D

func new_game():
	$KinematicBody2D.start($Position2D.position)
	$Interface.show_message("Lets goo!")
	
func game_over():
	$Interface.game_over()

func _on_saw_body_entered(body):
	game_over()
	$KinematicBody2D.hide()
	$KinematicBody2D.emit_signal("hit")
	$KinematicBody2D/CollisionShape2D.disabled = true
	
func _on_Spikes_body_entered(body):
	game_over()
	$KinematicBody2D.hide()
	$KinematicBody2D.emit_signal("hit")
	$KinematicBody2D/CollisionShape2D.disabled = true
	
func _on_fire_body_entered(body):
	game_over()
	$KinematicBody2D.hide()
	$KinematicBody2D.emit_signal("hit")
	$KinematicBody2D/CollisionShape2D.disabled = true


func _on_Spiked_ball_body_entered(body):
	game_over()
	$KinematicBody2D.hide()
	$KinematicBody2D.emit_signal("hit")
	$KinematicBody2D/CollisionShape2D.disabled = true

func _on_Welcome_guy_body_entered(body):
	$Welcome_guy/Dialoge.show()
	
	
