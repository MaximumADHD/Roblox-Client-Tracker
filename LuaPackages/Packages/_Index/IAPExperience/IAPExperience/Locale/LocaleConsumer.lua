local LocalizationRoot = script.Parent
local IAPExperienceRoot = LocalizationRoot.Parent

local Packages = IAPExperienceRoot.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local LocaleRoactContext = require(LocalizationRoot.LocaleRoactContext)

local LocaleConsumer = Roact.Component:extend("LocaleConsumer")

LocaleConsumer.validateProps = t.strictInterface({
	render = t.callback,
})

function LocaleConsumer:render()
	return Roact.createElement(LocaleRoactContext.Consumer, {
		render = function(localeContext)
			return self.props.render(localeContext)
		end,
	})
end

return LocaleConsumer
