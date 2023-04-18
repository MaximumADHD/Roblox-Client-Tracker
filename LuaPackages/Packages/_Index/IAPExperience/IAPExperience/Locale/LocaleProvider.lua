local LocalizationRoot = script.Parent
local IAPExperienceRoot = LocalizationRoot.Parent

local Packages = IAPExperienceRoot.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local getLocaleContext = require(LocalizationRoot.getLocaleContext)

local LocaleRoactContext = require(LocalizationRoot.LocaleRoactContext)

local LocaleProvider = Roact.Component:extend("LocaleProvider")

LocaleProvider.validateProps = t.interface({
	locale = t.string,
})

function LocaleProvider:render()
	return Roact.createElement(LocaleRoactContext.Provider, {
		value = getLocaleContext(self.props.locale),
	}, self.props[Roact.Children])
end

return LocaleProvider
