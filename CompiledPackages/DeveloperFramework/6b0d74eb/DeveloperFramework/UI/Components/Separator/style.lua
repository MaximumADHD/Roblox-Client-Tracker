local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Color = StyleKey.Border,
	StretchMargin = 0,
	Weight = 1,
}
