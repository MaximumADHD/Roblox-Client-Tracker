local Foundation = script:FindFirstAncestor("Foundation")
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local Theme = require(Foundation.Enums.Theme)
local TokenProcessingUtilities = require(Foundation.Providers.Style.Tokens.TokenProcessingUtilities)
local Tokens = require(Foundation.Providers.Style.Tokens)

type Theme = Theme.Theme
type Device = Device.Device
type TokenOverrides = Tokens.TokenOverrides

export type OverrideAttributes = { [string]: unknown }

local function tokenPathToAttributeBase(tokenPath: string): string
	-- Convert "Color.Surface.Surface_100" to "ColorSurfaceSurface100"
	return tokenPath:gsub("%.", ""):gsub("_", "")
end

local function emitLeafAttributes(result: OverrideAttributes, attrBase: string, value: any)
	if type(value) == "table" then
		for key, nested in value do
			emitLeafAttributes(result, attrBase .. tostring(key), nested)
		end
	else
		result[attrBase] = value
	end
end

-- Returns a map of attribute name -> base override value.
-- The returned values mirror the `attribute.value` found in generated rules:
-- platform scale (Console 1.5x) is baked in, but the user-supplied scale factor
-- is NOT. Callers are responsible for running the value through scaleValue with
-- the user scale so overrides scale the same way as the base rule values do.
--
-- Keys are target token paths. Values: if a string, a source token path; otherwise a literal.
-- All of this runs only when FoundationTokenOverrides is enabled (see Flags).
local function getOverrideAttributes(theme: Theme, device: Device, overrides: TokenOverrides?): OverrideAttributes
	local result: OverrideAttributes = {}

	if not Flags.FoundationTokenOverrides then
		return result
	end

	if not overrides or not next(overrides) then
		return result
	end

	local baseTokens = Tokens.getTokens(theme, device, 1)

	for targetPath, source in overrides do
		local sourceValue = TokenProcessingUtilities.resolveTokenOverride(baseTokens, targetPath, source)
		if sourceValue ~= nil then
			emitLeafAttributes(result, tokenPathToAttributeBase(targetPath), sourceValue)
		end
	end

	return result
end

return getOverrideAttributes
