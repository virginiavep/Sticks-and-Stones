if flAlpha > 0 {
	shader_set(flash_sh);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flColor, flAlpha);
	shader_reset();
}