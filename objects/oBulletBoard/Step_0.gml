if current_width < global.border_width{
	current_width += ((global.border_width - current_width) / 2)
}

if current_width > global.border_width{
	current_width -= ((global.border_width - current_width) / 2)
}


if current_height > global.border_height{
	current_height += ((current_height - global.border_height) / 2)
}


if current_height < global.border_height{
	current_height -= ((current_height - global.border_height) / 2)
}