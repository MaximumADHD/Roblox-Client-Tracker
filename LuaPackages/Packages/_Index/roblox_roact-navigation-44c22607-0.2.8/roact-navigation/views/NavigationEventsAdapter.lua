local Roact = require(script.Parent.Parent.Parent.Roact)
local AppNavigationContext = require(script.Parent.AppNavigationContext)
local NavigationEvents = require(script.Parent.Parent.NavigationEvents)
local validate = require(script.Parent.Parent.utils.validate)

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
			[RoactNavigation.Events.WillFocus] = self.willFocus,
			[RoactNavigation.Events.DidFocus] = self.didFocus,
			[RoactNavigation.Events.WillBlur] = self.willBlur,
			[RoactNavigation.Events.DidBlur] = self.didBlur,
		}, <remainder of component tree> )
	end

	Remember that focus and blur events may be called more than once in the lifetime of a
	component. If you navigate away from a component and then come back later, it will receive
	willBlur/didBlur and then willFocus/didFocus events.

	Also remember that your event handlers must capture any self reference lexically, if necessary.
]]
local NavigationEventsAdapter = Roact.Component:extend("NavigationEventsAdapter")

function NavigationEventsAdapter:init()
	self.subscriptions = {}
end

function NavigationEventsAdapter:_subscribeAll()
	local navigation = self.props.navigation
	assert(navigation ~= nil, "NavigationEventsAdapter can only be used within the view hierarchy of a navigator.")

	for _, symbol in pairs(NavigationEvents) do
		self.subscriptions[symbol] = navigation.addListener(symbol, function(...)
			-- Retrieve callback from props each time, in case props change.
			local callback = self.props[symbol] or nil
			if callback then
				validate(type(callback) == "function", "Value for event '%s' must be a function callback", tostring(symbol))
				callback(...)
			end
		end)
	end
end

function NavigationEventsAdapter:_disconnectAll()
	for _, symbol in pairs(NavigationEvents) do
		local sub = self.subscriptions[symbol]
		if sub then
			sub.disconnect()
			self.subscriptions[symbol] = nil
		end
	end
end

function NavigationEventsAdapter:didMount()
	self:_subscribeAll()
end

function NavigationEventsAdapter:willUnmount()
	self:_disconnectAll()
end

function NavigationEventsAdapter:didUpdate(prevProps)
	if self.props.navigation ~= prevProps.navigation then
		-- This component might get reused for different state, so we need to hook back up to events
		self:_disconnectAll()
		self:_subscribeAll()
	end
end

function NavigationEventsAdapter:render()
	return Roact.createElement("Folder", nil, self.props[Roact.Children])
end

return AppNavigationContext.connect(NavigationEventsAdapter)
