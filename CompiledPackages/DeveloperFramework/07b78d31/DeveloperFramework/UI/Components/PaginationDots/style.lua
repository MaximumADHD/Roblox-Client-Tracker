local Framework = script:FindFirstAncestor("UI").Parent
local StyleKey = require(Framework.Style.StyleKey)

return {
	ArrowImage = "rbxasset://textures/DeveloperFramework/arrow_right.png",
	ArrowSize = UDim2.fromOffset(20, 20),
	ArrowColor = StyleKey.SubText,
	DotColor = StyleKey.TextDisabled,
	DotImage = "rbxasset://textures/StudioSharedUI/dot.png",
	DotsInset = 50,
	DotSize = UDim2.fromOffset(6, 6),
	SelectedColor = StyleKey.TextPrimary,
}
