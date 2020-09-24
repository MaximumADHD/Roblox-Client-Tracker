local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Cryo = Util.Cryo
local deepCopy = Util.deepCopy
local Style = Util.Style
local StyleModifier = Util.StyleModifier
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local Common = require(Framework.StudioUI.StudioFrameworkStyles.Common)
local UIFolderData = require(Framework.UI.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	local roundBox = deepCopy(RoundBox)
	return {
		PlaceholderTextColor = StyleKey.DimmedText,

		["&RoundedBorder"] = {
			Padding = {
				Left = 10,
				Top = 5,
				Right = 10,
				Bottom = 5
			},
			BackgroundStyle = RoundBox,
			[StyleModifier.Hover] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					BorderColor = StyleKey.DialogMainButton,
				})
			},
		}
	}
else
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
end
