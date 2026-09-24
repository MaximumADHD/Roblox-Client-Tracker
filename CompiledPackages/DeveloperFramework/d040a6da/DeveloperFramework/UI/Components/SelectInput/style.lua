local Framework = script:FindFirstAncestor("UI").Parent

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy
local StyleModifier = require(Framework.Util.StyleModifier)

local roundBox = deepCopy(RoundBox)
return {
	Padding = 10,
	BackgroundStyle = Cryo.Dictionary.join(roundBox, {
		Color = StyleKey.InputFieldBackground,

		[StyleModifier.Hover] = {
			BorderColor = StyleKey.DialogMainButton,
			Color = StyleKey.InputFieldBackground,
		},

		[StyleModifier.Error] = {
			BorderColor = StyleKey.ErrorText,
		},
	}),
	ErrorTextStyle = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.ErrorText,
		TextSize = 18,
		TextXAlignment = Enum.TextXAlignment.Left,
	},
	DropdownMenu = {
		BackgroundStyle = roundBox,
		Width = 240,
		MaxHeight = 240,
		Offset = Vector2.new(0, 0),
	},
	Size = UDim2.new(0, 240, 0, 32),
	ArrowOffset = 10,
	ArrowSize = UDim2.new(0, 12, 0, 12),
	ArrowImage = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
	ArrowColor = StyleKey.MainText,
	IconOffset = 10,
	IconSize = UDim2.fromOffset(16, 16),
	PlaceholderTextColor = StyleKey.DimmedText,
	Text = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.MainText,
		TextSize = 18,
		TextXAlignment = Enum.TextXAlignment.Left,
	},
}
