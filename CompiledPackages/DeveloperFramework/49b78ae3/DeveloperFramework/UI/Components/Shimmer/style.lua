local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	BackgroundColor = Color3.new(1, 1, 1),
	ColorStart = StyleKey.ShimmerStart,
	ColorEnd = StyleKey.ShimmerEnd,
	ColorEndTintPercent = 1,
	Rotation = 0,
	Time = 1,
}
