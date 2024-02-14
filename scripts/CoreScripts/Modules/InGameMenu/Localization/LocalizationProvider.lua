--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagSwitchInExpTranslationsPackage = require(RobloxGui.Modules.Flags.GetFFlagSwitchInExpTranslationsPackage)
if GetFFlagSwitchInExpTranslationsPackage() then
	return require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
end

local LocalizationRoactContext = require(script.Parent.LocalizationRoactContext)

function LocalizationProvider(props)
	return Roact.createElement(LocalizationRoactContext.Provider, {
		value = props.localization,
	}, props[Roact.Children])
end

return LocalizationProvider
