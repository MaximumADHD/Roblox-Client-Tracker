local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

return function(theme, getColor)

	local Default = Style.new({
		Color = theme:GetColor("Border"),
		Image = "rbxasset://textures/StudioSharedUI/dropShadow.png",
		ImageSize = 16,
		Offset = Vector2.new(),
		Radius = 6,
		Transparency = 0
	})

	return {
		Default = Default,
	}
end
