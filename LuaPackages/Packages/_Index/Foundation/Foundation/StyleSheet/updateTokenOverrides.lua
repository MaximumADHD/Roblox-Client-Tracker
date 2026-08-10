local Foundation = script:FindFirstAncestor("Foundation")
local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local Tokens = require(Foundation.Providers.Style.Tokens)
local createStyleSheetRules = require(script.Parent.createStyleSheetRules)
local getOverrideAttributes = require(script.Parent.getOverrideAttributes)
local scaleValue = require(Foundation.Utility.scaleValue)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type TokenOverrides = Tokens.TokenOverrides
type AttributesCache = createStyleSheetRules.AttributesCache

local function updateTokenOverrides(
	sheet: StyleSheet,
	colorMode: ColorMode,
	device: Device,
	scale: number,
	overrides: TokenOverrides?,
	attributesCache: AttributesCache?
)
	local overrideAttributes = getOverrideAttributes(colorMode, device, overrides)

	for name, rawValue in overrideAttributes do
		local value = if Flags.FoundationDisableTokenScaling then rawValue else scaleValue(rawValue, scale)
		sheet:SetAttribute(name, value)
		if attributesCache then
			attributesCache[name] = value
		end
	end
end

return updateTokenOverrides
