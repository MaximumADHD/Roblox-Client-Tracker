local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue

local useBindable = require(Foundation.Utility.useBindable)

local function useCumulativeBackground(
	background: ColorStyle,
	elementBackground: ColorStyle
): React.Binding<ColorStyleValue>
	local backgroundBinding = useBindable(background)
	local elementBackgroundBinding = useBindable(elementBackground)

	return React.joinBindings({ backgroundBinding, elementBackgroundBinding }):map(function(backgrounds)
		return {
			Color3 = backgrounds[2].Color3:Lerp(backgrounds[1].Color3, backgrounds[2].Transparency),
			Transparency = 0,
		}
	end)
end

return useCumulativeBackground
