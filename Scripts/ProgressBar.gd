extends ProgressBar

func _ready():
	#$ProgressBar.value = 100
	print("temp")

func set_percent_value(newValue):
	$ProgressBar.value = newValue
