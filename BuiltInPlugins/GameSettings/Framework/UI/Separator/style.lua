local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

return function(theme, getColor)

	local Default = Style.new({
		Color = theme:GetColor("Border"),
		StretchMargin = 0,
		Weight = 1
	})

	return {
		Default = Default,
	}
end
