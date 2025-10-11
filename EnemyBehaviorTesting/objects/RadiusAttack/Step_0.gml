pastWidth = sprite_width;
pastHeight = sprite_height;

image_xscale += 10 * (delta_time / deltaOffset);
image_yscale += 10 * (delta_time / deltaOffset);

x -= (sprite_width - pastWidth) / 2;
y -= (sprite_height - pastHeight) / 2;