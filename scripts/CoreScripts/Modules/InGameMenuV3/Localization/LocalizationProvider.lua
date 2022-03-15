local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

local LocalizationRoactContext = require(script.Parent.LocalizationRoactContext)

local function LocalizationProvider(props)
	return Roact.createElement(LocalizationRoactContext.Provider, {
		value = props.localization,
	}, props[Roact.Children])
end

return LocalizationProvider
