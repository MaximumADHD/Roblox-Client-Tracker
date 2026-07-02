local Framework = script:FindFirstAncestor("UI").Parent

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)

local Util = require(Framework.Util)
local deepCopy = Util.deepCopy

local StyleKey = require(Framework.Style.StyleKey)

local roundBox = deepCopy(RoundBox)

return {
	BackgroundStyle = roundBox,
	BorderColor = StyleKey.Border,
	Width = 240,
	MaxHeight = 240,
	ItemHeight = 40,
	Offset = Vector2.new(0, 0),
	Text = {
		TextSize = 18,
		TextXAlignment = Enum.TextXAlignment.Left,
	},
	["&ImageOffset"] = {
		Offset = Vector2.new(-40, 0),
	},
	["&TextInputDropdown"] = nil,
	["&Modern"] = {
		CornerRadius = UDim.new(0, 8),
		BackgroundColor = StyleKey.DropdownMenuStateLayerBackground,
		StrokeColor = StyleKey.DropdownMenuStateLayerBorderColor,
		StrokeThickness = 1,
		Offset = Vector2.new(0, 5),
	},
}
