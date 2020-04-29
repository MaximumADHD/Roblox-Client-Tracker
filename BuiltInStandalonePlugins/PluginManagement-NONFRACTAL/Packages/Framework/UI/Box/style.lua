local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

return function(theme, getColor)
	local common = Common(theme, getColor)

	local Default = Style.extend(common.Background, {
		Transparency = 0,
		BorderSize = 0,
	})

	return {
		Default = Default,
	}
end
