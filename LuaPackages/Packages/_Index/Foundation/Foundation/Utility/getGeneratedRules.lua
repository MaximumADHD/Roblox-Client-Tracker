local Foundation = script:FindFirstAncestor("Foundation")

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local FontName = require(Foundation.Enums.FontName)
local ThemeName = require(Foundation.Enums.ThemeName)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type ThemeName = ThemeName.ThemeName

local TypographyVariants: { [ThemeName]: string } = require(Foundation.Generated.StyleRules.TypographyVariants)

local requirePaths: { [typeof("Common") | ColorMode | Device]: () -> any } = {
	Common = function()
		return require(Foundation.Generated.StyleRules.CommonAttribute)
	end,
	-- TODO start: Remove when FoundationThemeName flag is cleaned up
	Dark = function()
		return require(Foundation.Generated.StyleRules.DarkAttribute)
	end,
	Light = function()
		return require(Foundation.Generated.StyleRules.LightAttribute)
	end,
	-- TODO end: Remove when FoundationThemeName flag is cleaned up
	Console = function()
		return require(Foundation.Generated.StyleRules.ConsoleAttribute)
	end,
	Desktop = function()
		return require(Foundation.Generated.StyleRules.DesktopAttribute)
	end,
}

-- Color rules are baked per theme, so they are keyed by ThemeName then ColorMode.
local colorRulePaths: { [ThemeName]: { [ColorMode]: () -> any } } = {
	[ThemeName.CircuitRush] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.CircuitRush.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.CircuitRush.LightAttribute)
		end,
	},
	[ThemeName.Classic] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.Classic.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.Classic.LightAttribute)
		end,
	},
	[ThemeName.CosmicDust] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.CosmicDust.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.CosmicDust.LightAttribute)
		end,
	},
	[ThemeName.Default] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.Default.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.Default.LightAttribute)
		end,
	},
	[ThemeName.ElectricLime] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.ElectricLime.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.ElectricLime.LightAttribute)
		end,
	},
	[ThemeName.HyperPlum] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.HyperPlum.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.HyperPlum.LightAttribute)
		end,
	},
	[ThemeName.InfernoBlast] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.InfernoBlast.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.InfernoBlast.LightAttribute)
		end,
	},
	[ThemeName.Kids] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.Kids.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.Kids.LightAttribute)
		end,
	},
	[ThemeName.KidsClassic] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.KidsClassic.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.KidsClassic.LightAttribute)
		end,
	},
	[ThemeName.KineticEnergy] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.KineticEnergy.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.KineticEnergy.LightAttribute)
		end,
	},
	[ThemeName.LavaGlow] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.LavaGlow.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.LavaGlow.LightAttribute)
		end,
	},
	[ThemeName.NebulaDrift] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.NebulaDrift.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.NebulaDrift.LightAttribute)
		end,
	},
	[ThemeName.NitroFrost] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.NitroFrost.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.NitroFrost.LightAttribute)
		end,
	},
	[ThemeName.PixelPop] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.PixelPop.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.PixelPop.LightAttribute)
		end,
	},
	[ThemeName.PolarFreeze] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.PolarFreeze.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.PolarFreeze.LightAttribute)
		end,
	},
	[ThemeName.QuantumPulse] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.QuantumPulse.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.QuantumPulse.LightAttribute)
		end,
	},
	[ThemeName.StarBurst] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.StarBurst.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.StarBurst.LightAttribute)
		end,
	},
	[ThemeName.SuperCharge] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.SuperCharge.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.SuperCharge.LightAttribute)
		end,
	},
}

local DEFAULT_TYPOGRAPHY_VARIANT = FontName.BuilderSans

local typographyVariantPaths: { [string]: { [Device]: () -> any } } = {
	[FontName.BuilderSans] = {
		Desktop = function()
			return require(Foundation.Generated.StyleRules.Typography.BuilderSans.DesktopAttribute)
		end,
		Console = function()
			return require(Foundation.Generated.StyleRules.Typography.BuilderSans.ConsoleAttribute)
		end,
	},
	[FontName.Cartoon] = {
		Desktop = function()
			return require(Foundation.Generated.StyleRules.Typography.Cartoon.DesktopAttribute)
		end,
		Console = function()
			return require(Foundation.Generated.StyleRules.Typography.Cartoon.ConsoleAttribute)
		end,
	},
}

local function getGeneratedRules(themeNameInput: ThemeName?, colorMode: ColorMode, device: Device): any
	local themeName: ThemeName = themeNameInput or ThemeName.Default
	local colorModeRules, sizeRules, commonRules
	commonRules = requirePaths["Common"]()

	if Flags.FoundationThemeName then
		local themeColorPaths = colorRulePaths[themeName] or colorRulePaths[ThemeName.Default]
		colorModeRules = themeColorPaths[colorMode]()
	else
		if colorMode == ColorMode.Dark then
			colorModeRules = requirePaths["Dark" :: ColorMode]()
		elseif colorMode == ColorMode.Light then
			colorModeRules = requirePaths["Light" :: ColorMode]()
		end
	end

	if device == Device.Console and not Flags.FoundationDisableTokenScaling then
		sizeRules = requirePaths["Console" :: Device]()
	else
		sizeRules = requirePaths["Desktop" :: Device]()
	end

	if not colorModeRules or not sizeRules or not commonRules then
		return {}
	end

	local combinedRules = table.clone(sizeRules)

	for key, value in commonRules do
		combinedRules[key] = value
	end

	for key, value in colorModeRules do
		combinedRules[key] = value
	end

	if Flags.FoundationThemedTypography then
		local variant = TypographyVariants[themeName] or DEFAULT_TYPOGRAPHY_VARIANT
		local variantPaths = typographyVariantPaths[variant] or typographyVariantPaths[DEFAULT_TYPOGRAPHY_VARIANT]
		local typographyDevice: Device = if device == Device.Console and not Flags.FoundationDisableTokenScaling
			then Device.Console
			else Device.Desktop
		local getTypographyRules = variantPaths[typographyDevice]

		if getTypographyRules then
			local typographyRules = getTypographyRules()
			if typographyRules then
				for key, value in typographyRules do
					combinedRules[key] = value
				end
			end
		end
	end

	return combinedRules
end

return getGeneratedRules
