local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue

--[[
	Blends two colors together, taking into account the transparency of each color.
	Consistent with behavior used in ImageCombineType.BlendSourceOver in EditableImage
	https://create.roblox.com/docs/reference/engine/enums/ImageCombineType
	
	This implementation uses proper alpha compositing (BlendSourceOver/Porter-Duff "over" operator)
	to match the C++ rendering engine and EditableImage behavior.
]]
local function getBackgroundStyleWithStateLayer(
	backgroundStyle: ColorStyleValue,
	stateLayerStyle: { Color3: Color3, Transparency: number }
): ColorStyleValue
	-- Extract alpha from transparency (alpha = 1 - transparency)
	local sourceAlpha = 1 - (stateLayerStyle.Transparency or 0)
	local destAlpha = 1 - (backgroundStyle.Transparency or 0)

	-- Fast path: if source is fully opaque or dest is fully transparent, just return source
	if sourceAlpha == 1 or destAlpha == 0 or backgroundStyle.Color3 == nil then
		return stateLayerStyle
	end

	-- Fast path: if source is fully transparent, return dest
	if sourceAlpha == 0 then
		return backgroundStyle
	end

	local reverseSourceA = 1.0 - sourceAlpha

	local a = sourceAlpha + (destAlpha * reverseSourceA)

	local aInverse = a > 0.0 and (1 / a) or 0.0 -- Check for division by zero

	local resultR = (stateLayerStyle.Color3.R * sourceAlpha + (backgroundStyle.Color3.R * (destAlpha * reverseSourceA)))
		* aInverse
	local resultG = (stateLayerStyle.Color3.G * sourceAlpha + (backgroundStyle.Color3.G * (destAlpha * reverseSourceA)))
		* aInverse
	local resultB = (stateLayerStyle.Color3.B * sourceAlpha + (backgroundStyle.Color3.B * (destAlpha * reverseSourceA)))
		* aInverse

	return {
		-- selene: allow(roblox_internal_custom_color)
		Color3 = Color3.new(resultR, resultG, resultB),
		Transparency = 1 - a, -- Convert back to transparency
	}
end

return getBackgroundStyleWithStateLayer
