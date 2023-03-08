--!strict
local dependencies = require(script.dependencies)
local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)
local TokenPackageIndexMap = dependencies.TokenPackageIndexMap
local Validators = dependencies.CommonPackage.Validators
local Types = require(script.Types)

local function getTokenPacakgeIndex(deviceType: string?, themeName: string, defaultThemeName: string)
	local platformModule = TokenPackageIndexMap[deviceType]
	-- Since design token support is a new feature, we don't want to offer fallback for the platform variant
	assert(platformModule ~= nil, "Wrong platform specified!")
	local themeModule = platformModule[themeName]
	if themeModule == nil then
		themeModule = platformModule[defaultThemeName]
	end
	assert(themeModule ~= nil, "Wrong theme specified!")
	return themeModule
end

return {
	getTokens = function(deviceType: string?, themeName: string, defaultThemeName: string): Types.Tokens
		local packageIndex = getTokenPacakgeIndex(deviceType, themeName, defaultThemeName)
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
