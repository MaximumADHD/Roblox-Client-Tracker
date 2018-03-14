local Modules = game:GetService("CoreGui").RobloxGui.Modules
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(Modules.Common.Roact)
local Symbol = require(Modules.Common.Symbol)
local Immutable = require(Modules.Common.Immutable)

local LocalizationKey = Symbol.named("Localization")

local RoactLocalization = {}

local LocalizationProvider = Roact.Component:extend("LocalizationProvider")
RoactLocalization.LocalizationProvider = LocalizationProvider

function LocalizationProvider:init(props)
	local localization = props.localization

	if localization == nil then
		error("Error initializing LocalizationProvider. Expected a `localization` prop to be a Localization.")
	end

	self._context[LocalizationKey] = localization
end

function LocalizationProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function RoactLocalization.connect(propsToLocalize)
	return function(component)
		if component == nil then
			error("Expected component to be passed to connection, got nil.")
		end

		local name = ("Localize(%s)"):format(tostring(component))
		local Connection = Roact.Component:extend(name)

		function Connection:init(props)
			local localization = self._context[LocalizationKey]

			if not localization then
				error(
					"Cannot initialize RoactLocalization component without being a descendent of LocalizationProvider!\n" ..
					("Tried to wrap component %q\n"):format(tostring(component)) ..
					"Make sure there is a LocalizationProvider above this component in the tree."
				)
			end

			self.state = {
				locale = LocalizationService.RobloxLocaleId
			}
			self.localization = localization

			LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function(newLocale)
				self:setState({
					locale = newLocale
				})
			end)
		end

		function Connection:render()
			local localizedProps = {}
			for _, propName in ipairs(propsToLocalize) do
				local stringInfo = self.props[propName]
				if stringInfo ~= nil then
					if type(stringInfo) ~= "table" then
						error(("Localized field %s is not a table."):format(propName))
					end

					if type(stringInfo[1]) ~= "string" then
						error(("Localized field %s has a %s as its first entry, string expected"):format(propName, type(stringInfo[1])))
					end

					local translation = self.localization:Format(stringInfo[1], stringInfo)
					localizedProps[propName] = translation
				end
			end

			local props = Immutable.JoinDictionaries(self.props, localizedProps)
			if type(component) == "string" then
				props = Immutable.RemoveFromDictionary(props, "locale")
			end

			return Roact.createElement(component, props)
		end

		return Connection
	end
end

return RoactLocalization