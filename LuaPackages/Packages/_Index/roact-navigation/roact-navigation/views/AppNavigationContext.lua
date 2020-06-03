local Roact = require(script.Parent.Parent.Parent.Roact)
local Cryo = require(script.Parent.Parent.Parent.Cryo)
local NavigationSymbol = require(script.Parent.Parent.NavigationSymbol)
local validate = require(script.Parent.Parent.utils.validate)

local APP_NAVIGATION_CONTEXT = NavigationSymbol("APP_NAVIGATION_CONTEXT")

-- Provider
local NavigationProvider = Roact.Component:extend("NavigationProvider")

function NavigationProvider:init()
	local navigation = self.props.navigation
	validate(navigation ~= nil, "AppNavigationContext.Provider requires a 'navigation' prop.")
	self._context[APP_NAVIGATION_CONTEXT] = { navigation = navigation }
end

function NavigationProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

-- Consumer
local NavigationConsumer = Roact.Component:extend("NavigationConsumer")

function NavigationConsumer:render()
	local renderProp = self.props.render
	local context = self._context[APP_NAVIGATION_CONTEXT] or {}
	local navigation = self.props.navigation or context.navigation

	validate(renderProp ~= nil, "AppNavigationContext.Consumer requires 'render' prop.")
	validate(navigation ~= nil, "AppNavigationContext.Consumer requires a navigation prop or context entry.")

	return renderProp(navigation)
end

-- Static connector
local function connect(innerComponent)
	local componentName = string.format("NavigationConnection(%s)", tostring(innerComponent))
	local Connection = Roact.Component:extend(componentName)

	function Connection:render()
		local props = self.props

		return Roact.createElement(NavigationConsumer, {
			navigation = props.navigation, -- can be passed directly to wrapper
			render = function(navigation)
				return Roact.createElement(innerComponent, Cryo.Dictionary.join({
					navigation = navigation
				}, props)) -- join other props last so someone can manually pass in 'navigation'
			end
		})
	end

	return Connection
end

return {
	Provider = NavigationProvider,
	Consumer = NavigationConsumer,
	connect = connect,
}
