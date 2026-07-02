local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Padding = 2,
	Spacing = 5,
	ButtonSize = 32,
	IconSize = 24,
	IconColor = StyleKey.Icon,
	InputWidth = 38,
}
