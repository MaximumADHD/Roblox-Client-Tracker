local LocalziationRoot = script.Parent
local IAPExperienceRoot = LocalziationRoot.Parent

local Packages = IAPExperienceRoot.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local LocaleContextKey = require(IAPExperienceRoot.Symbols.LocaleContextKey)
local getLocaleContext = require(LocalziationRoot.getLocaleContext)

local LocaleProvider = Roact.Component:extend("LocaleProvider")

LocaleProvider.validateProps = t.interface({
	locale = t.string,
})

function LocaleProvider:init()
	self._context[LocaleContextKey] = getLocaleContext(self.props.locale)
end

function LocaleProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

function LocaleProvider:didUpdate(previousProps)
	if self.props.locale ~= previousProps.locale then
		self._context[LocaleContextKey] = getLocaleContext(self.props.locale)
	end
end

return LocaleProvider
