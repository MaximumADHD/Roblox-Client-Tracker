local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

return function(theme, getColor)

	local Default = Style.new({
		StartColor = theme:GetColor("DimmedText"),
		EndColor = theme:GetColor("DialogMainButton", "Selected")
	})

	return {
		Default = Default,
	}
end
