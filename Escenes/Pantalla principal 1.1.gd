extends Node2D

func new_game():
	
	$startuptimer.start()
	$Interface.show_message("Ready!")

func game_over():
	$Interface.game_over()



