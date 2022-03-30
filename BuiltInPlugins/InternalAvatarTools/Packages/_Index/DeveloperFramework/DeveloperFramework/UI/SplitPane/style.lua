local Framework = script.Parent.Parent.Parent

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Util = require(Framework.Util)

local Common = require(StudioFrameworkStyles.Common)

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
if not THEME_REFACTOR then
	return function(theme, getColor)
		local common = Common(theme, getColor)
		return {
			Default = common.MainText,
		}
	end
end

return {}
