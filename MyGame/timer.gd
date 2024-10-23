extends Node2D

func _process(delta: float) -> void:
	$TimeRemaining.text = "%s" % roundf($FlashTimer.time_left)

func _on_flash_timer_timeout() -> void:
	toggle_icon_visibility()

func toggle_icon_visibility():
	if $Icon.visible:
		$Icon.hide()
	else:
		$Icon.show()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		$FlashTimer.paused = !$FlashTimer.paused

		# toggle_icon_visibility()
		# $FlashTimer.start()
