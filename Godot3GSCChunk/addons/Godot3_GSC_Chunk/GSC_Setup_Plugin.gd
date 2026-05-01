tool
extends EditorPlugin

var GSC_Godots_Setup


func _enter_tree():
	GSC_Godots_Setup = preload("gsc_importer_plugin.gd").new()
	add_import_plugin(GSC_Godots_Setup)


func _exit_tree():
	remove_import_plugin(GSC_Godots_Setup)
	GSC_Godots_Setup = null
