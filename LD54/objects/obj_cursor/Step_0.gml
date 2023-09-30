if (window_mouse_get_locked())
{
    x += window_mouse_get_delta_x();
    y += window_mouse_get_delta_y();
}

x = clamp(x, camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))
y = clamp(y, camera_get_view_y(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))