local dependencies = require(script.dependencies)
local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)
local TokenPackageIndexMap = dependencies.TokenPackageIndexMap
local GetTokenGenerators = dependencies.GetTokenGenerators
local Validators = dependencies.SchemaPackage.Validators
local GetFoundationTokens = dependencies.GetFoundationTokens

local Types = require(script.Types)
local Constants = require(script.Parent.Constants)

local UIBloxConfig = require(Style.Parent.Parent.UIBloxConfig)

type ThemeName = Constants.ThemeName
type DeviceType = Constants.DeviceType

-- This operates off of entirely lowercased theme values for backwards compatibility.
-- As files move to reference constants instead of their own strings, we can remove this.
local function getTokenPackageIndex(deviceType: DeviceType, themeName: ThemeName | string)
	local platformModule = TokenPackageIndexMap[deviceType]
	-- Since design token support is a new feature, we don't want to offer fallback for the platform variant
	assert(platformModule ~= nil, "Wrong platform specified!")
	local themeModule = platformModule[themeName:lower()]
	if themeModule == nil then
		themeModule = platformModule[Constants.DefaultThemeName:lower()]
	end
	assert(themeModule ~= nil, "Wrong theme specified!")
	return themeModule
end

local function getPlatformScale(deviceType: DeviceType)
	-- Platform scale will be from engine API as soon as it's ready.
	-- For now scale values are hard-coded, and only console uses 1.5
	-- differently according to design specs.
	if not UIBloxConfig.disableTokenScalingForConsole and deviceType == Constants.DeviceType.Console then
		return 1.5
	end
	return 1
end

return {
	getTokens = function(
		deviceType: DeviceType,
		themeName: ThemeName | string,
		useCommonTokens: boolean?
	): Types.Tokens
		if useCommonTokens then
			local tokenGenerators = GetTokenGenerators(themeName) or GetTokenGenerators(Constants.DefaultThemeName)
			local scale = getPlatformScale(deviceType)

			return {
				Global = require(tokenGenerators.Global)(scale),
				Semantic = require(tokenGenerators.Semantic)(scale),
				Component = require(tokenGenerators.Component)(scale),
			} :: Types.Tokens
		end

		local packageIndex = getTokenPackageIndex(deviceType, themeName)
		return {
			Global = require(packageIndex.Global),
			Semantic = require(packageIndex.Semantic),
			Component = require(packageIndex.Component),
		} :: Types.Tokens
	end,
	validateTokens = t.strictInterface({
		Global = t.strictInterface(Validators.Global),
		Semantic = t.strictInterface(Validators.Semantic),
		Component = t.strictInterface(Validators.Component),
	}),
	Types = Types,
	getFoundationTokens = function(deviceType: DeviceType, themeName: ThemeName | string)
		local foundationTokens = GetFoundationTokens(themeName) or GetFoundationTokens(Constants.DefaultThemeName)
		local scale = getPlatformScale(deviceType)

		return foundationTokens(scale)
	end,
	getFoundationTokensDefaultScale = function(themeName: ThemeName | string)
		local foundationTokens = GetFoundationTokens(themeName) or GetFoundationTokens(Constants.DefaultThemeName)
		return foundationTokens(1)
	end,
	Mappers = require(script.mappers),
}
