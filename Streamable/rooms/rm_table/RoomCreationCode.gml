surface_depth_disable(true);
gesture_drag_time(0.05);
gpu_set_tex_mip_enable(mip_on);
gpu_set_tex_mip_filter(tf_anisotropic)

vertex_format_begin();
vertex_format_add_colour();
vertex_format_add_position();
vertex_format_add_normal();
global.format_perspective = vertex_format_end();

// Global Menu:
var options = new RightClickMenuOption("Open Options", open_options, noop, noop);
var load_deck = new RightClickMenuOption("Load Decklist", load_decklist, noop, noop);
var scry_search = new RightClickMenuOption("Search Scryfall", search_scryfall, noop, noop);

global.options = new RightClickMenu();
global.options.AddOption(options);
global.options.AddOption(load_deck);
global.options.AddOption(scry_search);