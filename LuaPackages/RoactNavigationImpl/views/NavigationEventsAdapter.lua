local CoreGui = game:GetService("CoreGui")
local Roact = require(CoreGui.RobloxGui.Modules.Common.Roact)
local AppNavigationContext = require(script.Parent.AppNavigationContext)
local NavigationEvents = require(script.Parent.Parent.NavigationEvents)
local withNavigation = require(script.Parent.withNavigation)

local eventSymbolToPropNameMap = {
	[NavigationEvents.WillFocus] = "onWillFocus",
	[NavigationEvents.DidFocus] = "onDidFocus",
	[NavigationEvents.WillBlur] = "onWillBlur",
	[NavigationEvents.DidBlur] = "onDidBlur",
}

--[[
	NavigationEventsAdapter providers a wrapper component that allows you to subscribe
	to the navigation lifecycle events without having to explicitly manage your own
	listener subscriptions.

	Usage:

	function MyComponent:init()
		self.willFocus = function()
			-- Do tasks that need to happen right before the component will appear on screen.
		end

		self.didFocus = function()
			-- Do tasks that need to happen right after the component appears on screen.
		end
	end

	function MyComponent:render()
		-- Note that you must capture the self reference lexically, if you need it.
		return Roact.createElement(RoactNavigation.EventsAdapter, {
			onWillFocus = self.willFocus,
			onDidFocus = self.didFocus,
			onWillBlur = self.willBlur,
			onDidBlur = self.didBlur,
		}, <remainder of component tree> )
	end

	Remember that focus and blur events may be called more than once in the lifetime of a
	component. If you navigate away from a component and then come back later, it will receive
	willBlur/didBlur and then willFocus/didFocus events.

	Also be aware that the on<event>() handlers are passed as props. You must capture
	your 'self' reference lexically if you want to use it.
]]
local NavigationEventsAdapter = Roact.Component:extend("NavigationEventsAdapter")

function NavigationEventsAdapter:didMount()
	local navigation = self.props.navigation or self._context[AppNavigationContext]
	assert(navigation ~= nil, "NavigationEventsAdapter can only be used within the view hierarchy of a navigator.")

	self.subscriptions = {}

	-- Register all navigation listeners on mount to ensure listener stability across re-render.
	-- Tip taken from React's NavigationEvents.js.
	for symbol, propName in pairs(eventSymbolToPropNameMap) do
		local callback = self.props[propName]

		if callback then
			self.subscriptions[symbol] = navigation:addListener(symbol, function(...)
				return callback(...) or nil
			end)
		end
	end
end

function NavigationEventsAdapter:willUnmount()
	for symbol, _ in pairs(eventSymbolToPropNameMap) do
		local sub = self.subscriptions[symbol]
		if sub then
			sub:disconnect()
		end
	end
end

function NavigationEventsAdapter:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return withNavigation(NavigationEventsAdapter)
