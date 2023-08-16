local dependencies = require(script.dependencies)
local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)
local TokenPackageIndexMap = dependencies.TokenPackageIndexMap
local Validators = dependencies.SchemaPackage.Validators

local Types = require(script.Types)
local Constants = require(script.Parent.Constants)

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

return {
	getTokens = function(deviceType: DeviceType, themeName: ThemeName | string): Types.Tokens
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
}
