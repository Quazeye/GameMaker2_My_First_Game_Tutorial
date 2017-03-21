var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);
var camera_width = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_score);
draw_set_color(c_white);
draw_text(camera_x + camera_width / 2, camera_y + 25, string(thescore));

