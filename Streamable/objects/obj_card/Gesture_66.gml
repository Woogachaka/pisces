/// @description Dragging
if is_selected and obj_selector.lowest_object != noone and obj_selector.lowest_object.object_index == obj_card
{
	clear_menus(self);
	is_dragged = true;
	offset_drag = true;
	
	offset_x = x;
	offset_y = y;
	
	if obj_selector.lowest_object == id
	{
		subscribed_events = {
			"coalesce": 0	
		}	
	}
	else
	{
		subscribed_events = {};	
	}
	
	remove_from_card_stack(self);
	layer_add_instance("Dragging", self);
	obj_height_manager.height_modified = true;
}
else if is_hovering
{
	clear_menus(self);
	is_dragged = true;
	offset_drag = false;

	next_x = mouse_x;
	next_y = mouse_y;

	remove_from_card_stack(self);
	height_priority = next_height_priority()
	layer_add_instance("Dragging", self);
}
