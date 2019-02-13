local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local localizationKey = require(Plugin.Src.Keys.localizationKey)

local LocalizationConsumer = Roact.Component:extend("LocalizationConsumer")

function LocalizationConsumer:init()
	local localization = self._context[localizationKey]

	self.localization = localization
	self.state = {
		localizedContent = localization.values,
	}
end

function LocalizationConsumer:render()
	return self.props.render(self.state.localizedContent)
end

function LocalizationConsumer:didMount()
	self.disconnectLocaleListener = self.localization:subscribe(function(newValues)
		self:setState({
			localizedContent = newValues,
		})
	end)
end

function LocalizationConsumer:willUnmount()
	self.disconnectLocaleListener()
end

return LocalizationConsumer