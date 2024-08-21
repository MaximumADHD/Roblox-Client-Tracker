local Foundation = script:FindFirstAncestor("Foundation")

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
		return {
			Color3 = backgroundStyle.Color3:Lerp(stateLayerStyle.Color3, 1 - stateLayerStyle.Transparency),
			Transparency = backgroundStyle.Transparency,
		}
		-- TODO: Ensure initial backgroundTransparency is taken into account
	end
end

return getBackgroundStyleWithStateLayer
