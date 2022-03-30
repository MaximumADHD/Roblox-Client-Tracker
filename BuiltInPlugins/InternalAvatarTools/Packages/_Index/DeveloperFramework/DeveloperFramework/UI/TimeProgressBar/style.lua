local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local FFlagDevFrameworkTimeProgressBar = game:GetFastFlag("DevFrameworkTimeProgressBar")

if not FFlagDevFrameworkTimeProgressBar then
	if THEME_REFACTOR then
		return {}
	else
		return function() end
	end
elseif THEME_REFACTOR then
	return {
		HeightPx = 20,
		TextLabelWidthPx = 40,
		BarHeightPx = 12,
		PaddingPx = 10,
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)
		return {
			Default = common.MainText,
		}
	end
end