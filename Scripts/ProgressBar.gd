extends ProgressBar

func _ready():
	#$ProgressBar.value = 100
	print("temp")

func set_percent_value_int(value):
	$ProgressBar.value = value