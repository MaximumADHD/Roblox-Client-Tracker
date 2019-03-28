--[[
	Constant values that are used across multiple widgets.
]]

local DFFlagGameSettingsWorldPanel = settings():GetFFlag("GameSettingsWorldPanel2")

local Constants = {
	RADIO_BUTTON_SIZE = 20,

	BUTTON_WIDTH = 125,
	BUTTON_HEIGHT = 35,

	ROUNDED_BACKGROUND_IMAGE = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
	ROUNDED_BORDER_IMAGE = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
	ROUNDED_FRAME_SLICE = Rect.new(3, 3, 13, 13),
}

if DFFlagGameSettingsWorldPanel then
	Constants.TEXT_SIZE = 22
end

return Constants
