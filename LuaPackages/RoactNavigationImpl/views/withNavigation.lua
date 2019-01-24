local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CoreGui.RobloxGui.Modules.Common.Roact)
local Cryo = require(CorePackages.Cryo)
local AppNavigationContext = require(script.Parent.AppNavigationContext)

--[[
	withNavigation() creates a wrapper that automatically provides an appropriate
	navigation prop. This is useful for cases where you need to perform navigation
	actions from a deeply nested part of the component tree, but don't want to daisy-
	chain the navigation prop down through several layers.
]]
return function(innerComponent)
	assert(innerComponent ~= nil, "withNavigation must be passed a component")

	local componentName = string.format("withNavigation(%s)", tostring(innerComponent))
	local ComponentWithNavigation = Roact.Component:extend(componentName)

	function ComponentWithNavigation:render()
		local navigation = self.props.navigation or self._context[AppNavigationContext]
		assert(navigation ~= nil, "withNavigation can only be used within the view hierarchy of a navigator.")

		return Roact.createElement(innerComponent, Cryo.Dictionary.join(self.props, {
			navigation = navigation,
		}))
	end

	return ComponentWithNavigation
end
