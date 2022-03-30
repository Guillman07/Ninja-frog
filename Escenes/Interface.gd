extends CanvasLayer

signal start_game

func show_message(texto):
	$message.text = texto
	$message.show()
	$message_timer.start()
func game_over():
	show_message("Game Over")
	yield($message_timer, "timeout")
	$Button.show()
	$message.text = "Ninja frog"
	$message.show()
	


func _on_message_timer_timeout():
	$message.hide()


func _on_Button_pressed():
	$Button.hide()
	$Sprite.hide()
	emit_signal("start_game")
