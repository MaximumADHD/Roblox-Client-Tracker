local Framework = script.Parent.Parent.Parent

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local StyleKey = require(Framework.Style.StyleKey)
local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier

local Common = require(StudioFrameworkStyles.Common)

export type Style = {
	Weight: number,
	Background: Color3,
}

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
if not THEME_REFACTOR then
	return function(theme, getColor)
		local common = Common(theme, getColor)
		return {
			Default = common.MainText,
		}
	end
end

return {
	Weight = 5,
	Background = StyleKey.MainBackground,
	[StyleModifier.Hover] = {
		Background = StyleKey.ButtonHover,
	},
	[StyleModifier.Pressed] = {
		Background = StyleKey.ButtonPressed,
	}
}
