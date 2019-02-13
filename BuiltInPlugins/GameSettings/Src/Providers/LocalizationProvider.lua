local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local localizationKey = require(Plugin.Src.Keys.localizationKey)

local LocalizationProvider = Roact.Component:extend("LocalizationProvider")

function LocalizationProvider:init()
	local localization = self.props.localization

	if localization == nil then
		error("Error initializing LocalizationProvider. Expected a `localization` prop.")
	end

	self._context[localizationKey] = self.props.localization
end

function LocalizationProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function LocalizationProvider:willUnmount()
	self._context[localizationKey]:destroy()
end

return LocalizationProvider