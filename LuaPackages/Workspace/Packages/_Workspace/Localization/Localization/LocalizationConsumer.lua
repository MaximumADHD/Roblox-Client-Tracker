local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(CorePackages.Roact)

local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local RobloxLocaleIdKey = require(script.Parent.RobloxLocaleIdKey)
local LocalizationRoactContext = require(script.Parent.LocalizationRoactContext)
local localizeStrings = require(script.Parent.localizeStrings)

local LocalizationConsumer = Roact.Component:extend("LocalizationConsumer")

function LocalizationConsumer:init()
	local localization = self.props.localization

	if localization == nil then
		error("LocalizationConsumer must be below a LocalizationProvider.")
	end

	self.state = {
		locale = LocalizationService.RobloxLocaleId,
	}

	self.updateLocalization = function(newLocale)
		newLocale = localization:GetLocale()
		if newLocale ~= self.state.locale then
			self:setState({
				locale = newLocale,
			})
		end
	end

	self.connections = {
		localization.changed:connect(self.updateLocalization),
	}
end

function LocalizationConsumer:willUnmount()
	for _, connection in pairs(self.connections) do
		connection:disconnect()
	end
end

function LocalizationConsumer:render()
	local localization = self.props.localization

	local render = self.props.render
	local stringsToBeLocalized = self.props.stringsToBeLocalized

	ArgCheck.isType(render, "function", "LocalizationConsumer.props.render")
	ArgCheck.isType(stringsToBeLocalized, "table", "LocalizationConsumer.props.stringsToBeLocalized")

	local localizedStrings = localizeStrings(localization, stringsToBeLocalized)
	localizedStrings[RobloxLocaleIdKey] = self.state.locale

	return render(localizedStrings)
end

local function LocalizationContextConsumer(props)
	return Roact.createElement(LocalizationRoactContext.Consumer, {
		render = function(localization)
			return Roact.createElement(LocalizationConsumer, {
				localization = localization,
				render = props.render,
				stringsToBeLocalized = props.stringsToBeLocalized,
			})
		end,
	})
end

return LocalizationContextConsumer
