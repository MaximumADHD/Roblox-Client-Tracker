local Framework = script.Parent.Parent.Parent

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

return function(theme, getColor)
	local common = Common(theme, getColor)

	local Default = common.Scroller

	return {
		Default = Default,
	}
end
