--TODO: Change to the version of Localization in CorePackages when we change the version of Roact to the
-- CorePackages version
local LocalizationService = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact

local InGameMenu = script.Parent.Parent
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local LocalizationKey = require(script.Parent.LocalizationKey)

local LocalizationConsumer = Roact.Component:extend("LocalizationConsumer")

function LocalizationConsumer:init()
	local localization = self._context[LocalizationKey].localization

	if localization == nil then
		error("LocalizationConsumer must be below a LocalizationProvider.")
	end

	self.state = {
		locale = LocalizationService.RobloxLocaleId,
	}

	self.updateLocalization = function(newLocale)
		if newLocale ~= self.state.locale then
			self:setState({
				locale = newLocale
			})
		end
	end
end

function LocalizationConsumer:render()
	local localization = self._context[LocalizationKey].localization
	local render = self.props.render
	local stringsToBeLocalized = self.props.stringsToBeLocalized

	assert(t.callback(render))
	assert(t.table(stringsToBeLocalized))

	local localizedStrings = {}
	for stringName, stringInfo in pairs(stringsToBeLocalized) do
		if typeof(stringInfo) == "table" then
			if typeof(stringInfo[1]) == "string" then
				local success, result = pcall(function()
					return localization:Format(stringInfo[1], stringInfo)
				end)

				assert(success, string.format(
					"LocalizationConsumer finding value for translation key[%s]: %s", stringName, stringInfo[1]))

				localizedStrings[stringName] = success and result or ""
			else
				error(string.format("%s[1] in stringsToBeLocalized must be a string, got %s instead",
					stringName, typeof(stringInfo[1])))
			end
		elseif typeof(stringInfo) == "string" then
			local success, result = pcall(function()
				return localization:Format(stringInfo)
			end)

			assert(success, string.format(
				"LocalizationConsumer finding value for translation key[%s]: %s", stringName, stringInfo))

			localizedStrings[stringName] = success and result or ""
		else
			error(string.format("%s in stringsToBeLocalized must be a string or table, got %s instead",
				stringName, typeof(stringInfo)))
		end
	end

	return Roact.createElement(ExternalEventConnection, {
		event = LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"),
		callback = self.updateLocalization,
	}, {
		Component = render(localizedStrings),
	})
end

return LocalizationConsumer
