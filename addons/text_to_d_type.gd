@tool
extends Control

@onready var input = $VBoxContainer/input
@onready var o = $VBoxContainer/OptionButton
@onready var output = $VBoxContainer/output


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
		
