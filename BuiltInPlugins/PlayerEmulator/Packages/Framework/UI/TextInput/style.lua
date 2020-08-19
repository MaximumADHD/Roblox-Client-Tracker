local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local StyleModifier = Util.StyleModifier

local Common = require(Framework.StudioUI.StudioFrameworkStyles.Common)
local UIFolderData = require(Framework.UI.UIFolderData)
local UI = require(Framework.UI)
local Container = UI.Container
local RoundBox = require(UIFolderData.RoundBox.style)

return function(theme, getColor)
	local common = Common(theme, getColor)

	local Default = Style.extend(common.MainText, common.Border, {
		PlaceholderTextColor = theme:GetColor("DimmedText"),
	})

	local roundBox = RoundBox(theme, getColor)

	local RoundedBorder = Style.extend(Default, {
		Padding = {
			Left = 10,
			Top = 5,
			Right = 10,
			Bottom = 5
		},
		BackgroundStyle = roundBox.Default,
		[StyleModifier.Hover] = {
			BackgroundStyle = Style.extend(roundBox.Default, common.BorderHover)
		},
	})

	return {
		Default = Default,
		RoundedBorder = RoundedBorder
	}
end
