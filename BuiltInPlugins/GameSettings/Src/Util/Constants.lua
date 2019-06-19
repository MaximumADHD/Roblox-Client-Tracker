--[[
	Constant values that are used across multiple files within this project.
]]

local Constants = {

MENU_BAR_WIDTH = 192,
MENU_ENTRY_HEIGHT = 42,

FRAME_PADDING = 36,

CENTER_GUTTER = 180,
ELEMENT_PADDING = 32,

RADIO_BUTTON_SIZE = 20,
RADIO_BUTTON_PADDING = 10,

CHECKBOX_SIZE = 20,
CHECKBOX_PADDING = 8,

BUTTON_WIDTH = 125,
BUTTON_HEIGHT = 35,

HEADER_HEIGHT = 45,
FOOTER_HEIGHT = 65,

BLUE = Color3.fromRGB(0, 162, 255),
BLUE_DISABLED = Color3.fromRGB(153, 218, 255),

BLACK = Color3.new(0, 0, 0),
WHITE = Color3.new(1, 1, 1),

ROUNDED_BACKGROUND_IMAGE = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
ROUNDED_BORDER_IMAGE = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
ROUNDED_FRAME_SLICE = Rect.new(3, 3, 13, 13),

ROUND_TEXT_BOX_DEFAULT_HEIGHT = 42,

GRADIENT_IMAGE = "rbxasset://textures/gradient.png",
GRADIENT_RECT_SIZE = Vector2.new(512, 256),

ERROR_IMAGE = "rbxasset://textures/GameSettings/ErrorIcon.png",
ERROR_COLOR = Color3.new(1, 0.266, 0.266),

WARNING_IMAGE = "rbxasset://textures/GameSettings/Warning.png",

MAX_THUMBNAILS = 10,
VIDEO_PLACEHOLDER = "rbxasset://textures/GameSettings/placeholder.png",
THUMBNAIL_SIZE = UDim2.new(0, 267, 0, 150),

BAD_REQUEST = 400,

IMAGE_TYPES = {"jpg", "jpeg", "png"},

TEXT_SIZE = 22,

}

return Constants
