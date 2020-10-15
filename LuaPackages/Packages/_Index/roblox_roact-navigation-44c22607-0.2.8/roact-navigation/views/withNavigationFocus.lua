--[[
	withNavigationFocus() is a convenience function that extends withNavigation(),
	allowing your render function (and therefor your subgraph) to access the
	navigation context object AND an additional boolean that indicates whether or
	not the containing screen component is in focus. For example:

	function MyButtonComponent:render()
		return withNavigationFocus(function(navigation, focused)
			return Roact.createElement("TextButton", {
				Enabled = focused,
				[Roact.Event.Activated] = function()
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
local Roact = require(script.Parent.Parent.Parent.Roact)
local NavigationEvents = require(script.Parent.Parent.NavigationEvents)
local AppNavigationContext = require(script.Parent.AppNavigationContext)
local validate = require(script.Parent.Parent.utils.validate)


local NavigationFocusComponent = Roact.Component:extend("NavigationFocusComponent")

function NavigationFocusComponent:init()
	local navigation = self.props.navigation
	self.state = {
		isFocused = navigation and navigation.isFocused() or false
	}
end

function NavigationFocusComponent:didMount()
	local navigation = self.props.navigation
	validate(navigation ~= nil,
		"withNavigationFocus can only be used within the view hierarchy of a navigator. " ..
		"The wrapped component cannot access 'navigation' from props or context.")

	self._didFocusListener = navigation.addListener(NavigationEvents.DidFocus, function()
		-- no spawn because we expect this to be called directly from safe paths
		self:setState({
			isFocused = true,
		})
	end)

	self._willBlurListener = navigation.addListener(NavigationEvents.WillBlur, function()
		-- no spawn because we expect this to be called directly from safe paths
		self:setState({
			isFocused = false,
		})
	end)
end

function NavigationFocusComponent:willUnmount()
	if self._didFocusListener then
		self._didFocusListener:disconnect()
		self._didFocusListener = nil
	end

	if self._willBlurListener then
		self._willBlurListener:disconnect()
		self._willBlurListener = nil
	end
end

function NavigationFocusComponent:render()
	local isFocused = self.state.isFocused
	local navigation = self.props.navigation
	local render = self.props.render

	return render(navigation, isFocused)
end

NavigationFocusComponent = AppNavigationContext.connect(NavigationFocusComponent)

return function(renderProp)
	validate(renderProp ~= nil, "withNavigationFocus must be passed a render prop")

	return Roact.createElement(NavigationFocusComponent, {
		render = renderProp
	})
end
