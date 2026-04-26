local Packages = script.Parent.Parent.Parent.Parent
local Framework = require(Packages.Framework)

local StyleKey = Framework.Style.StyleKey

return {
	BackgroundColor = StyleKey.Button,
	IconColor = StyleKey.ButtonText,
	IconSize = 16,
	ItemSize = UDim2.new(1, 0, 0, 40),
	GridIcon = "rbxasset://textures/MaterialFramework/Grid.png",
	ListIcon = "rbxasset://textures/MaterialFramework/List.png",
	Size = UDim2.fromOffset(50, 30),
	SliderAnchorPoint = Vector2.new(0.5, 0.5),
	SliderPosition = UDim2.fromScale(0.5, 0.5),
	SliderSize = UDim2.new(1, -10, 0, 20),
}
