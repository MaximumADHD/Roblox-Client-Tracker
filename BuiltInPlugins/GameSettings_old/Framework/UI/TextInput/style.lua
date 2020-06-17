local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local Common = require(Framework.StudioUI.StudioFrameworkStyles.Common)

return function(theme, getColor)
	local common = Common(theme, getColor)

	local Default = Style.extend(common.MainText, common.Border, {
		PlaceholderTextColor = theme:GetColor("DimmedText")
	})

	return {
		Default = Default,
	}
end
