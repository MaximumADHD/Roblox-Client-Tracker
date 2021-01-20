-- upstream https://github.com/react-navigation/react-navigation/blob/20e2625f351f90fadadbf98890270e43e744225b/packages/core/src/views/withNavigation.js
local Packages = script.Parent.Parent.Parent
local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)
local NavigationContext = require(script.Parent.NavigationContext)
local validate = require(script.Parent.Parent.utils.validate)

local function isComponent(component)
	local valueType = typeof(component)
	return valueType == "function" or valueType == "table"
end

--[[
	withNavigation() is a convenience function that you can use in your component's
	render function to access the navigation context object. For example:

	local MyComponent = Roact.Component:extend("MyComponent")

	function MyComponent:render()
		local navigation = self.props.navigation
		return Roact.createElement("TextButton", {
			[Roact.Activated] = function()
				navigation.navigate("DetailPage")
			end
		})
	end

	return withNavigation(MyComponent)
]]
return function(component, config)
	assert(
		isComponent(component),
		"withNavigation must be called with a Roact component (stateful or functional)"
	)
	config = config or {}

	if config.forwardRef == nil then
		config.forwardRef = true
	end

	return function(props)
		local navigationProp = props.navigation
		return Roact.createElement(NavigationContext.Consumer, {
			render = function(navigationContext)
				local navigation = navigationProp or navigationContext
				validate(navigation, "withNavigation and withNavigationFocus can only " ..
					"be used on a view hierarchy of a navigator. The wrapped component is " ..
					"unable to get access to navigation from props or context.")
				return Roact.createElement(component, Cryo.Dictionary.join(props, {
					navigation = navigation,
					[Roact.Ref] = config.forwardRef and props[Roact.Ref] or nil,
				}))
			end,
		})
	end
end
