local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

return function(theme, getColor)
	local common = Common(theme, getColor)

	local Default = Style.extend(common.Scroller, {
		AutoSizeCanvas = true,
		AutoSizeLayoutElement = "UIListLayout",
		AutoSizeLayoutOptions = {
			Padding = UDim.new(0, 4),
		},
	})

	return {
		Default = Default,
	}
end
