@tool
extends EditorPlugin


func _enable_plugin():
	# Add autoloads here.
	pass


func _disable_plugin():
	# Remove autoloads here.
	pass


func _enter_tree():
	var dock = load("res://text_to_d_type.tscn").instantiate()
	add_control_to_dock(EditorPlugin.DOCK_SLOT_BOTTOM,dock)


func _exit_tree():
	# Clean-up of the plugin goes here.
	pass
