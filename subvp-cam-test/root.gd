extends Node2D

func _ready():
	$sub_viewport.world_2d = get_viewport().world_2d
	
	# make the border line up with the projection edge.
	$projection/border.points = $projection.polygon 
	$projection/border.add_point($projection.polygon.get(0))
	$projection/border.global_transform = $projection.global_transform

func _process(_delta: float):
	# update the camera to match the mouse position.
	$sub_viewport/camera_2d.global_position = get_global_mouse_position()
