-- upstream https://github.com/react-navigation/react-navigation/blob/6390aacd07fd647d925dfec842a766c8aad5272f/packages/core/src/views/NavigationEvents.js
local root = script.Parent.Parent
local Packages = root.Parent
local Roact = require(Packages.Roact)
local withNavigation = require(script.Parent.withNavigation)
local Events = require(root.Events)

--[[
	NavigationEvents providers a wrapper component that allows you to subscribe
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
		return Roact.createElement(RoactNavigation.NavigationEvents, {
			onWillFocus = self.willFocus,
			onDidFocus = self.didFocus,
			onWillBlur = self.willBlur,
			onDidBlur = self.didBlur,
		})
	end

	Remember that focus and blur events may be called more than once in the lifetime of a
	component. If you navigate away from a component and then come back later, it will receive
	willBlur/didBlur and then willFocus/didFocus events.

	Also remember that your event handlers must capture any self reference lexically, if necessary.
]]

local EventNameToPropName = {
	[Events.WillFocus] = "onWillFocus",
	[Events.DidFocus] = "onDidFocus",
	[Events.WillBlur] = "onWillBlur",
	[Events.DidBlur] = "onDidBlur",
}

local NavigationEvents = Roact.Component:extend("NavigationEvents")

function NavigationEvents:didMount()
	-- We register all navigation listeners on mount to ensure listener stability across re-render
    -- A former implementation was replacing (removing/adding) listeners on all update (if prop provided)
    -- but there were issues (see https://github.com/react-navigation/react-navigation/issues/5058)
	self:subscribeAll()
end

function NavigationEvents:didUpdate(prevProps)
	if self.props.navigation ~= prevProps.navigation then
		-- This component might get reused for different state, so we need to hook back up to events
		self:removeAll()
		self:subscribeAll()
	end
end

function NavigationEvents:willUnmount()
	self:removeAll()
end

function NavigationEvents:getPropListener(eventName)
	return self.props[EventNameToPropName[eventName]]
end

function NavigationEvents:subscribeAll()
	local navigation = self.props.navigation

	self.subscriptions = {}

	for symbol in pairs(EventNameToPropName) do
		self.subscriptions[symbol] = navigation.addListener(symbol, function(...)
			-- Retrieve callback from props each time, in case props change.
			local callback = self:getPropListener(symbol)
			if callback then
				callback(...)
			end
		end)
	end
end

function NavigationEvents:removeAll()
	for symbol in pairs(EventNameToPropName) do
		local sub = self.subscriptions[symbol]
		if sub then
			sub.remove()
			self.subscriptions[symbol] = nil
		end
	end
end

function NavigationEvents:render()
	return nil
end

return withNavigation(NavigationEvents)
