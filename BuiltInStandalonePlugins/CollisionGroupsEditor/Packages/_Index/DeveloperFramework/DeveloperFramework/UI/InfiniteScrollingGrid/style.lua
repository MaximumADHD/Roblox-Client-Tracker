local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)


export type Style = {
	LoadingIndicatorSize : UDim2?,
	LoadingIndicatorPadding: number?,
}

if THEME_REFACTOR then
	return {
		LoadingIndicatorSize = UDim2.fromOffset(100, 20),
		LoadingIndicatorPadding = 20,
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.Scroller, {
			LoadingIndicatorSize = UDim2.fromOffset(100, 20),
			LoadingIndicatorPadding = 20,
		})

		return {
			Default = Default,
		}
	end
end
