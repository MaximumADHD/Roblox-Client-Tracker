local dependencies = require(script.dependencies)
local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)

local GetTokenGenerators = dependencies.GetTokenGenerators
local Validators = dependencies.SchemaPackage.Validators
local GetFoundationTokens = dependencies.GetFoundationTokens

local Types = require(script.Types)
local Constants = require(script.Parent.Constants)

local UIBloxConfig = require(Style.Parent.Parent.UIBloxConfig)

type ThemeName = Constants.ThemeName
type DeviceType = Constants.DeviceType

local function getPlatformScale(deviceType: DeviceType, scaleFactor: number?)
	scaleFactor = if scaleFactor ~= nil then scaleFactor else 1
	scaleFactor = math.clamp(scaleFactor :: number, 0, math.huge)

	local baseScale = 1
	-- Platform scale will be from engine API as soon as it's ready.
	-- For now scale values are hard-coded, and only console uses 1.5
	-- differently according to design specs.
	if not UIBloxConfig.disableTokenScalingForConsole and deviceType == Constants.DeviceType.Console then
		baseScale = 1.5
	end

	return baseScale * scaleFactor :: number
end

return {
	getTokens = function(deviceType: DeviceType, themeName: ThemeName | string, scaleFactor: number?): Types.Tokens
		local tokenGenerators = GetTokenGenerators(themeName) or GetTokenGenerators(Constants.DefaultThemeName)
		local scale = getPlatformScale(deviceType, scaleFactor)

		return {
			Global = require(tokenGenerators.Global)(scale),
			Semantic = require(tokenGenerators.Semantic)(scale),
			Component = require(tokenGenerators.Component)(scale),
		} :: Types.Tokens
	end,
	validateTokens = t.strictInterface({
		Global = t.strictInterface(Validators.Global),
		Semantic = t.strictInterface(Validators.Semantic),
		Component = t.strictInterface(Validators.Component),
	}),
	Types = Types,
	getFoundationTokens = function(deviceType: DeviceType, themeName: ThemeName | string, scaleFactor: number?)
		local foundationTokens = GetFoundationTokens(themeName) or GetFoundationTokens(Constants.DefaultThemeName)
		local scale = getPlatformScale(deviceType, scaleFactor)

		return foundationTokens(scale)
	end,
	getFoundationTokensDefaultScale = function(themeName: ThemeName | string)
		local foundationTokens = GetFoundationTokens(themeName) or GetFoundationTokens(Constants.DefaultThemeName)
		return foundationTokens(1)
	end,
	Mappers = require(script.mappers),
}
