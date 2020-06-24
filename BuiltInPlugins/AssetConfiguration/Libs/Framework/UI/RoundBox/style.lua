local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

return function(theme, getColor)
	local common = Common(theme, getColor)

	local Default = Style.extend(common.Background, common.Border, {
		Transparency = 0,
		BorderTransparency = 0,
		BackgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
		BorderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
		SliceCenter = Rect.new(3, 3, 13, 13),
	})

	return {
		Default = Default,
	}
end
