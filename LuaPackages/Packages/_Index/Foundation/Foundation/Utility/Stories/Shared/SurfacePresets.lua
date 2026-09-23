local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
type Tokens = Tokens.Tokens

local SURFACE_PRESET_ORDER = { "None", "Surface_0", "Surface_100", "Surface_200", "Surface_300" }

local function resolveSurfacePreset(tokens: Tokens, preset: string): Types.ColorStyle?
	if preset == "Surface_0" then
		return tokens.Color.Surface.Surface_0
	elseif preset == "Surface_100" then
		return tokens.Color.Surface.Surface_100
	elseif preset == "Surface_200" then
		return tokens.Color.Surface.Surface_200
	elseif preset == "Surface_300" then
		return tokens.Color.Surface.Surface_300
	end
	return nil
end

return {
	SURFACE_PRESET_ORDER = SURFACE_PRESET_ORDER,
	resolveSurfacePreset = resolveSurfacePreset,
}
