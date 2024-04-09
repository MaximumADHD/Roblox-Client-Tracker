-- upstream https://github.com/react-navigation/react-navigation/blob/20e2625f351f90fadadbf98890270e43e744225b/packages/core/src/views/withNavigationFocus.js
-- documentation: https://reactnavigation.org/docs/4.x/with-navigation-focus/
local views = script.Parent
local root = views.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local React = require(Packages.React)
local Events = require(root.Events)
local withNavigation = require(views.withNavigation)

local function isComponent(component)
	local valueType = type(component)
	return valueType == "function" or valueType == "table"
end

return function(component)
	assert(isComponent(component), "withNavigationFocus must be called with a Roact component (stateful or functional)")
	local NavigationFocusComponent = React.Component:extend("NavigationFocusComponent")

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
		for _, subscription in self.subscriptions do
			subscription.remove()
		end
	end

	function NavigationFocusComponent:render()
		return React.createElement(
			component,
			Object.assign(table.clone(self.props), {
				isFocused = self.state.isFocused,
			})
		)
	end

	return withNavigation(NavigationFocusComponent, { forwardRef = false })
end
