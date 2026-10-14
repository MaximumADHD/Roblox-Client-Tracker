local Framework = script:FindFirstAncestor("UI").Parent

local Image = require(Framework.UI.Components.Image)

local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy
local StyleModifier = require(Framework.Util.StyleModifier)
local StyleKey = require(Framework.Style.StyleKey)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBoxStyle = require(UIFolderData.RoundBox.style)

local function buttonStyle(image, hoverImage)
	local hoverStyle = StyleKey.DialogMainButton

	local foregroundStyle = {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Color = Color3.fromRGB(184, 184, 184),
		Image = image,
		Size = UDim2.new(0.6, 0, 0.6, 0),
		ScaleType = Enum.ScaleType.Fit,
	}

	local style = {
		Foreground = Image,
		ForegroundStyle = foregroundStyle,
		[StyleModifier.Hover] = {
			ForegroundStyle = Cryo.Dictionary.join(foregroundStyle, {
				Image = hoverImage,
				Color = hoverStyle,
			}),
		},
	}

	return style
end

local roundBox = deepCopy(RoundBoxStyle)
return {
	BackgroundColor = StyleKey.InputFieldBackground,
	BackgroundStyle = roundBox,
	Padding = {
		Top = 3,
		Left = 10,
		Bottom = 3,
		Right = 10,
	},

	SearchIcon = "rbxasset://textures/StudioSharedUI/search.png",
	IconColor = Color3.fromRGB(184, 184, 184),
	IconWidth = 12,
	IconOffset = 5,

	[StyleModifier.Hover] = {
		BackgroundStyle = Cryo.Dictionary.join(roundBox, {
			BorderColor = StyleKey.DialogMainButton,
		}),
	},

	Hover = {
		BorderColor = StyleKey.DialogMainButton,
	},

	Buttons = {
		Clear = buttonStyle(
			"rbxasset://textures/StudioSharedUI/clear.png",
			"rbxasset://textures/StudioSharedUI/clear-hover.png"
		),
		Search = buttonStyle("rbxasset://textures/StudioSharedUI/search.png"),
	},

	["&Compact"] = {
		Padding = {
			Top = -1,
			Left = 5,
			Bottom = -1,
			Right = 5,
		},
		TextSize = 14,
	},
}
