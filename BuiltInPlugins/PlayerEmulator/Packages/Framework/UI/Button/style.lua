local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local StyleModifier = Util.StyleModifier

local UI = require(Framework.UI)
local Decoration = UI.Decoration

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local UIFolderData = require(Framework.UI.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)

return function(theme, getColor)
	local common = Common(theme, getColor)
	local roundBox = RoundBox(theme, getColor)

	local Default = Style.extend(common.MainText, {
		Padding = 0,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
	})

	local Round = Style.extend(Default, {
		Background = Decoration.RoundBox,
		BackgroundStyle = Style.extend(roundBox.Default, {
			Color = theme:GetColor("Button"),
		}),
		[StyleModifier.Hover] = {
			BackgroundStyle = {
				Color = theme:GetColor("Button", "Hover"),
			},
		},
	})

	local RoundPrimary = Style.extend(Round, {
		TextColor = theme:GetColor("DialogMainButtonText"),
		BackgroundStyle = Style.extend(roundBox.Default, {
			Color = theme:GetColor("DialogMainButton"),
		}),
		[StyleModifier.Hover] = {
			BackgroundStyle = {
				Color = theme:GetColor("DialogMainButton", "Hover"),
			},
		},
	})

	return {
		Default = Default,
		Round = Round,
		RoundPrimary = RoundPrimary,
	}
end
