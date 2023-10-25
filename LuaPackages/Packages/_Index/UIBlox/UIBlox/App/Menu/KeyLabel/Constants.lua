local HEIGHT = 36

local Constants = {
	-- height of KeyLabels
	HEIGHT = HEIGHT,
	-- preferred width as long as we have at least MIN_SIDE_PADDING
	PREFERRED_WIDTH = HEIGHT,
	-- minimum padding around content
	MIN_SIDE_PADDING = 8,
	-- default padding on the side of KeyLabels
	SIDE_PADDING = 10,
	-- default theme for label background
	DEFAULT_ICON_THEME = "UIEmphasis",
	-- default font for text
	DEFAULT_TEXT_THEME = "TextDefault",
	-- default size for gamepad icons
	DEFAULT_GAMEPAD_ICON_SIZE = Vector2.new(36, 36),
	-- offset to center text vertically
	TEXT_CENTER_OFFSET = -1,
}

return Constants
