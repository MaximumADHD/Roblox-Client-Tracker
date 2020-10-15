local Roact = require(script.Parent.Parent.Parent.Roact)
local Cryo = require(script.Parent.Parent.Parent.Cryo)
local validate = require(script.Parent.Parent.utils.validate)

local NavigationContext = Roact.createContext(nil)

-- Provider
local function NavigationProvider(props)
	validate(props.navigation ~= nil, "NavigationContext.Provider requires a 'navigation' prop.")
	return Roact.createElement(NavigationContext.Provider,  {
		value = props.navigation
	}, props[Roact.Children])
end

-- Consumer
local function NavigationConsumer(props)
	return Roact.createElement(NavigationContext.Consumer, {
		render = function(navigation)
			navigation = props.navigation or navigation

			validate(props.render ~= nil, "NavigationContext.Consumer requires 'render' prop.")
			validate(navigation ~= nil, "NavigationContext.Consumer requires a navigation prop or context entry.")

			return props.render(navigation)
		end,
	})
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
