local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local LocalizationKey = require(CorePackages.Localization.LocalizationKey)

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
