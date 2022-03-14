-- upstream https://github.com/react-navigation/react-navigation/blob/20e2625f351f90fadadbf98890270e43e744225b/packages/core/src/views/withNavigationFocus.js
--[[
	withNavigationFocus() is a convenience function that extends withNavigation(),
	allowing your render function (and therefor your subgraph) to access the
	navigation context object AND an additional boolean that indicates whether or
	not the containing screen component is in focus. For example:

	function MyButtonComponent:render()
		return withNavigationFocus(function(navigation, focused)
			return Roact.createElement("TextButton", {
				Visible = focused,
				[Roact.Event.Activated] = focused and function()
					navigation.navigate("DetailPage")
				end,
			})
		end)
	end

	This is very useful when writing generic components that need to work with
	the navigation system (e.g. preventing buttons from navigating when a screen
	is not in focus so you don't cause double-navigation).

	Note that if you ONLY need the 'navigation' context object, it is recommended
	that you use withNavigation() for performance reasons.
]]
local root = script.Parent.Parent
local Packages = root.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local Events = require(root.Events)
local withNavigation = require(script.Parent.withNavigation)

local function isComponent(component)
	local valueType = typeof(component)
	return valueType == "function" or valueType == "table"
end

return function(component)
	assert(
		isComponent(component),
		"withNavigationFocus must be called with a Roact component (stateful or functional)"
	)
	local NavigationFocusComponent = Roact.Component:extend("NavigationFocusComponent")

	function NavigationFocusComponent:init()
		self.state = {
			isFocused = self.props.navigation.isFocused(),
		}
	end

	function NavigationFocusComponent:didMount()
		local navigation = self.props.navigation

		self.subscriptions = {
			navigation.addListener(Events.WillFocus, function()
				-- no spawn because we expect this to be called directly from safe paths
				self:setState({
					isFocused = true,
				})
			end),
			navigation.addListener(Events.WillBlur, function()
				-- no spawn because we expect this to be called directly from safe paths
				self:setState({
					isFocused = false,
				})
			end),
		}
	end

	function NavigationFocusComponent:willUnmount()
		for _, subscription in ipairs(self.subscriptions) do
			subscription.remove()
		end
	end

	function NavigationFocusComponent:render()
		return Roact.createElement(component, Cryo.Dictionary.join(self.props, {
			isFocused = self.state.isFocused,
		}))
	end

	return withNavigation(NavigationFocusComponent, { forwardRef = false })
end
