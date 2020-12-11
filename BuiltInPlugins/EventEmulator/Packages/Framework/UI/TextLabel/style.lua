local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local StyleModifier = Util.StyleModifier

if THEME_REFACTOR then
	return {
		[StyleModifier.Disabled] = {
			TextTransparency = 0.5,
		},
		["&Bold"] = {
			Font = Enum.Font.SourceSansBold
		},
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			[StyleModifier.Disabled] = {
				TextTransparency = 0.5,
			},
		})

		local Bold = Style.extend(Default, {
			Font = Enum.Font.SourceSansBold
		})

		return {
			Bold = Bold,
			Default = Default,
		}
	end
end
