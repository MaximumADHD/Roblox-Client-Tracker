--!strict
local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)

local Style = Framework.Style
local StyleKey = require(Style.StyleKey)

-- We use the Dark themes always because we exclusively want to color them.
local ICON_BASE = "rbxasset://studio_svg_textures/Lua/DeveloperFramework/Dark/Large/"

export type Style = {
	BackgroundColor: Color3,
	BackgroundColorHoverDarkerMultiplier: number,

	StrokeColor: Color3,
	StrokeThickness: number,

	TitleFont: Enum.Font,
	PrimaryActionFont: Enum.Font,

	TextColor: Color3,
	TextSize: number,

	TopPadding: UDim,
	HorizontalPadding: UDim,

	Icon: string?,
	IconPosition: UDim2,
	IconSize: UDim2,

	ContentsSpacing: number,

	CornerRadius: UDim,
	InnerPadding: number,
	MaxWidth: number,

	HoverCircleAdditionalSize: UDim2,
	HoverCircleColor: Color3,
	HoverCircleTransparency: number,

	CloseButtonImage: string,
}

local base = {
	BackgroundColor = StyleKey.AlertBackgroundDefault,
	BackgroundColorHoverDarkerMultiplier = 0.15,

	StrokeColor = StyleKey.OtherDivider,
	StrokeTransparency = 0.5,

	TitleFont = Enum.Font.SourceSansBold,
	PrimaryActionFont = Enum.Font.SourceSans,

	TextColor = StyleKey.TextPrimary,
	TextSize = 18,

	TopPadding = UDim.new(0, 7),
	HorizontalPadding = UDim.new(0, -10),

	IconPosition = UDim2.fromOffset(0, 2),
	IconSize = UDim2.fromOffset(16, 16),

	ContentsSpacing = 8,

	CornerRadius = UDim.new(0, 8),
	InnerPadding = 12,
	MaxWidth = 500,

	HoverCircleAdditionalSize = UDim2.fromOffset(6, 6),
	HoverCircleColor = StyleKey.TextSecondary,
	HoverCircleTransparency = 0.7,

	CloseButtonImage = ICON_BASE .. "Close.png",
}

return Dash.join(base, {
	["&Warning"] = Dash.join(base, {
		BackgroundColor = StyleKey.AlertBackgroundWarning,

		Icon = ICON_BASE .. "Warning.png",

		HoverCircleColor = Color3.new(0.4, 0.4, 0.4),

		TextColor = Color3.fromRGB(28, 28, 28),

		StrokeThickness = 0,
	}),

	["&Error"] = Dash.join(base, {
		BackgroundColor = StyleKey.AlertBackgroundError,

		Icon = ICON_BASE .. "Error.png",

		StrokeThickness = 0,

		HoverCircleColor = Color3.new(1, 1, 1),

		TextColor = Color3.new(1, 1, 1),
	}),

	["&Success"] = Dash.join(base, {
		BackgroundColor = StyleKey.AlertBackgroundSuccess,

		Icon = ICON_BASE .. "Success.png",

		StrokeThickness = 0,

		HoverCircleColor = Color3.new(1, 1, 1),
		HoverCircleTransparency = 0.8,

		TextColor = Color3.new(1, 1, 1),
	}),

	["&Info"] = Dash.join(base, {
		BackgroundColor = StyleKey.AlertBackgroundInfo,

		Icon = ICON_BASE .. "Info.png",

		StrokeThickness = 0,

		HoverCircleColor = Color3.new(1, 1, 1),

		TextColor = Color3.new(1, 1, 1),
	}),

	["&Notice"] = Dash.join(base, {
		Icon = ICON_BASE .. "Info.png",

		StrokeThickness = 0,

		HoverCircleColor = Color3.new(1, 1, 1),

		TextColor = Color3.new(1, 1, 1),
	}),
})
