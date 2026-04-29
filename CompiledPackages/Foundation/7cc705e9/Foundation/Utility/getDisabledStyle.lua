local Foundation = script:FindFirstAncestor("Foundation")
local Constants = require(Foundation.Constants)
local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

return function(colorStyle: ColorStyleValue, isDisabled: boolean?)
	if not isDisabled then
		return colorStyle
	else
		return {
			Color3 = colorStyle.Color3,
			Transparency = 1 - (1 - (colorStyle.Transparency or 0)) * Constants.DISABLED_TRANSPARENCY,
		}
	end
end
