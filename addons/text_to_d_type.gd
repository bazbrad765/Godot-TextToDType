@tool
extends Control

@onready var input = $VBoxContainer/input
@onready var o = $VBoxContainer/OptionButton
@onready var output = $VBoxContainer/output


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_input_text_changed():
	if o.selected == 0:
		var words = input.text.split(" ")
		var quoted_words = []
		for word in words:
			quoted_words.append('"' + word + '"')
		output.text = ", ".join(quoted_words)
	elif o.selected == 1:
		var words = input.text.split(" ")
		var pairs = []

		for i in range(0, words.size(), 2):
			if i + 1 < words.size(): 
				var key = '"' + words[i] + '"'
				var value = words[i + 1]
				pairs.append(key + ": " + value)
		
		output.text = ", ".join(pairs)
		
