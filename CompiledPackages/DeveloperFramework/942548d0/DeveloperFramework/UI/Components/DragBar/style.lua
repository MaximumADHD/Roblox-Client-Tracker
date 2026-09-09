local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)
local StyleModifier = require(Framework.Util.StyleModifier)

export type Style = {
	Weight: number,
	Background: Color3,
}

return {
	Weight = 5,
	Background = StyleKey.MainBackground,
	[StyleModifier.Hover] = {
		Background = StyleKey.ButtonHover,
	},
	[StyleModifier.Pressed] = {
		Background = StyleKey.ButtonPressed,
	},
}
