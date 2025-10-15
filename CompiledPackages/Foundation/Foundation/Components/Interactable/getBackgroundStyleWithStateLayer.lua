local Foundation = script:FindFirstAncestor("Foundation")

local lerp = require(Foundation.Utility.lerp)
local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

local function getBackgroundStyleWithStateLayer(
	backgroundStyle: ColorStyleValue,
	stateLayerStyle: { Color3: Color3, Transparency: number }
): ColorStyleValue
	if stateLayerStyle.Transparency == 1 then
		return {
			Color3 = backgroundStyle.Color3,
			Transparency = backgroundStyle.Transparency,
		}
	elseif backgroundStyle.Color3 == nil or backgroundStyle.Transparency == 1 then
		-- State layer color is the way, the path, the only
		return {
			Color3 = stateLayerStyle.Color3,
			Transparency = stateLayerStyle.Transparency,
		}
	else
		-- Lerp between the stateLayer color and the background color
		local transparency = backgroundStyle.Transparency or 0
		return {
			Color3 = backgroundStyle.Color3:Lerp(stateLayerStyle.Color3, 1 - stateLayerStyle.Transparency),
			Transparency = lerp(transparency, stateLayerStyle.Transparency, transparency),
		}
	end
end

return getBackgroundStyleWithStateLayer
