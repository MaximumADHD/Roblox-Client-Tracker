local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local StyleValue = Util.StyleValue

return function(theme, getColor)
	local padding = 10
	local scrollbarThickness = 5

	local Default = Style.new({
		Padding = {
			Top = padding,
			Left = padding,
			Bottom = padding,
			Right = padding - scrollbarThickness,
		},
		AutoSizeCanvas = true,
		AutoSizeLayoutElement = "UIListLayout",
		AutoSizeLayoutOptions = {
			Padding = UDim.new(0, 4),
		},

		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		BackgroundColor3 = theme:GetColor("MainBackground"),
		
		TopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
		MidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
		BottomImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",

		ScrollingEnabled = true,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		ScrollBarThickness = scrollBarThickness,
		ScrollBarImageTransparency = 0.5,
		ScrollBarImageColor3 = StyleValue.new("ScrollbarColor", {
			Light = Color3.fromRGB(25, 25, 25),
			Dark = Color3.fromRGB(204, 204, 204),
		}):get(theme.name),
		VerticalScrollBarInset = Enum.ScrollBarInset.Always
	})

	return {
		Default = Default,
	}
end
