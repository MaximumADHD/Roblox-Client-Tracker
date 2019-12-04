local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

local LocalizationKey = require(script.Parent.LocalizationKey)

local LocalizationProvider = Roact.Component:extend("LocalizationProvider")

function LocalizationProvider:init(props)
	local localization = props.localization
	self._context[LocalizationKey] = {
		localization = localization
	}
end

function LocalizationProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return LocalizationProvider
