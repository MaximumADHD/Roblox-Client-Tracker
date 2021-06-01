local LocalziationRoot = script.Parent
local IAPExperienceRoot = LocalziationRoot.Parent

local Packages = IAPExperienceRoot.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local LocaleContextKey = require(IAPExperienceRoot.Symbols.LocaleContextKey)

local LocaleConsumer = Roact.Component:extend("LocaleConsumer")

LocaleConsumer.validateProps = t.strictInterface({
	render = t.callback,
})

function LocaleConsumer:render()
	local localeContext = self._context[LocaleContextKey]
	return self.props.render(localeContext)
end

return LocaleConsumer
