-- universal design constants for in-game ui style
local Constants = {
	COLORS = {
		SLATE = Color3.fromRGB(35, 37, 39),
		FLINT = Color3.fromRGB(57, 59, 61),
		GRAPHITE = Color3.fromRGB(101, 102, 104),
		PUMICE = Color3.fromRGB(189, 190, 190),
		WHITE = Color3.fromRGB(255, 255, 255),
	},
	ERROR_PROMPT_HEIGHT = {
		Default = 236,
		XBox = 180,
	},
	ERROR_PROMPT_WIDTH = {
		Default = 400,
		XBox = 400,
	},
	ERROR_TITLE_FRAME_HEIGHT = {
		Default = 50,
	},
	SPLIT_LINE_WIDTH = 1,
	BUTTON_CELL_PADDING = 10,
	BUTTON_HEIGHT = 36,
	SIDE_PADDING = 20,
	LAYOUT_PADDING = 20,

	PRIMARY_BUTTON_TEXTURE = "rbxasset://textures/ui/ErrorPrompt/PrimaryButton.png",
	SECONDARY_BUTTON_TEXTURE = "rbxasset://textures/ui/ErrorPrompt/SecondaryButton.png",
	SHIMMER_TEXTURE = "rbxasset://textures/ui/LuaApp/graphic/shimmer.png",
	OVERLAY_TEXTURE = "rbxasset://textures/ui/ErrorPrompt/ShimmerOverlay.png",
}

return Constants