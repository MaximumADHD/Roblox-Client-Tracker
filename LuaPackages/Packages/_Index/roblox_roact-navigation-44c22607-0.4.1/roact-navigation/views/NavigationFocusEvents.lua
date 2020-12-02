-- upstream https://github.com/react-navigation/react-navigation/blob/9b55493e7662f4d54c21f75e53eb3911675f61bc/packages/core/src/views/NavigationFocusEvents.js

local root = script.Parent.Parent
local Packages = root.Parent
local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)
local Events = require(root.Events)

local NavigationEventManager = Roact.Component:extend("NavigationEventManager")

function NavigationEventManager:didMount()
	local navigation = self.props.navigation

	self._actionSubscription = navigation.addListener(
		Events.Action,
		function(...)
			return self:_handleAction(...)
		end
	)

	self._willFocusSubscription = navigation.addListener(
		Events.WillFocus,
		function(...)
			return self:_handleWillFocus(...)
		end
	)

	self._willBlurSubscription = navigation.addListener(
		Events.WillBlur,
		function(...)
			return self:_handleWillBlur(...)
		end
	)

	self._didFocusSubscription = navigation.addListener(
		Events.DidFocus,
		function(...)
			return self:_handleDidFocus(...)
		end
	)

	self._didBlurSubscription = navigation.addListener(
		Events.DidBlur,
		function(...)
			return self:_handleDidBlur(...)
		end
	)

	self._refocusSubscription = navigation.addListener(
		Events.Refocus,
		function(...)
			return self:_handleRefocus(...)
		end
	)
end

function NavigationEventManager:willUnmount()
	if self._actionSubscription then
		self._actionSubscription.remove()
	end
	if self._willFocusSubscription then
		self._willFocusSubscription.remove()
	end
	if self._willBlurSubscription then
		self._willBlurSubscription.remove()
	end
	if self._didFocusSubscription then
		self._didFocusSubscription.remove()
	end
	if self._didBlurSubscription then
		self._didBlurSubscription.remove()
	end
	if self._refocusSubscription then
		self._refocusSubscription.remove()
	end
end

function NavigationEventManager:_handleAction(actionPayload)
	local state = actionPayload.state
	local lastState = actionPayload.lastState
	local action = actionPayload.action
	local type = actionPayload.type
	local context = actionPayload.context

	local navigation = self.props.navigation
	local onEvent = self.props.onEvent

	-- We should only emit events when the navigator is focused
	-- When navigator is not focused, screens inside shouldn"t receive focused status either
	if not navigation.isFocused() then
		return
	end

	local previous
	if lastState and lastState.routes then
		previous = lastState.routes[lastState.index]
	end
	local current = state.routes[state.index]

	local payload = {
		context = ("%s:%s_%s"):format(current.key, tostring(action.type), context or "Root"),
		state = current,
		lastState = previous,
		action = action,
		type = type,
	}

	if (previous and previous.key) ~= current.key then
		self:_emitWillFocus(current.key, payload)

		if previous and previous.key then
			self:_emitWillBlur(previous.key, payload)
		end
	end

	if lastState and lastState.isTransitioning ~= state.isTransitioning and
		state.isTransitioning == false
	then
		if self._lastWillBlurKey then
			self:_emitDidBlur(self._lastWillBlurKey, payload)
		end

		if self._lastWillFocusKey then
			self:_emitDidFocus(self._lastWillFocusKey, payload)
		end
	end

	onEvent(current.key, Events.Action, payload)
end

function NavigationEventManager:_handleWillFocus(args)
	local lastState = args.lastState
	local action = args.action
	local context = args.context
	local type = args.type

	local navigation = self.props.navigation
	local route = navigation.state.routes[navigation.state.index]

	local nextLastState = nil
	if lastState and lastState.routes then
		local nextLastStateIndex = Cryo.List.findWhere(lastState and lastState.routes or {}, function(r)
			return r.key == route.key
		end)
		if nextLastStateIndex then
			nextLastState = lastState.routes[nextLastStateIndex]
		end
	end

	self:_emitWillFocus(route.key, {
		context = ("%s:%s_%s"):format(route.key, tostring(action.type), context or "Root"),
		state = route,
		lastState = nextLastState,
		action = action,
		type = type,
	})
end

function NavigationEventManager:_handleWillBlur(args)
	local lastState = args.lastState
	local action = args.action
	local context = args.context
	local type = args.type

	local navigation = self.props.navigation
	local route = navigation.state.routes[navigation.state.index]

	local nextLastState = nil
	if lastState and lastState.routes then
		local nextLastStateIndex = Cryo.List.findWhere(lastState and lastState.routes or {}, function(r)
			return r.key == route.key
		end)
		if nextLastStateIndex then
			nextLastState = lastState.routes[nextLastStateIndex]
		end
	end

	self:_emitWillBlur(route.key, {
		context = ("%s:%s_%s"):format(route.key, tostring(action.type), context or "Root"),
		state = route,
		lastState = nextLastState,
		action = action,
		type = type,
	});
end

function NavigationEventManager:_handleDidFocus(args)
	local lastState = args.lastState
	local action = args.action
	local context = args.context
	local type = args.type

	local navigation = self.props.navigation

	if self._lastWillFocusKey then
		local routeIndex = Cryo.List.findWhere(navigation.state.routes, function(r)
			return r.key == self._lastWillFocusKey
		end)

		if routeIndex then
			local route = navigation.state.routes[routeIndex]

			local nextLastState = nil
			if lastState and lastState.routes then
				local nextLastStateIndex = Cryo.List.findWhere(lastState and lastState.routes or {}, function(r)
					return r.key == route.key
				end)
				if nextLastStateIndex then
					nextLastState = lastState.routes[nextLastStateIndex]
				end
			end

			self:_emitDidFocus(route.key, {
				context = ("%s:%s_%s"):format(route.key, tostring(action.type), context or "Root"),
				state = route,
				lastState = nextLastState,
				action = action,
				type = type,
			});
		end
	end
end

function NavigationEventManager:_handleDidBlur(args)
	local lastState = args.lastState
	local action = args.action
	local context = args.context
	local type = args.type

	local navigation = self.props.navigation

	if self._lastWillBlurKey then
		local routeIndex = Cryo.List.findWhere(navigation.state.routes, function(r)
			return r.key == self._lastWillBlurKey
		end)

		if routeIndex then
			local route = navigation.state.routes[routeIndex]

			local nextLastState = nil
			if lastState and lastState.routes then
				local nextLastStateIndex = Cryo.List.findWhere(lastState and lastState.routes or {}, function(r)
					return r.key == route.key
				end)
				if nextLastStateIndex then
					nextLastState = lastState.routes[nextLastStateIndex]
				end
			end

			self:_emitDidBlur(route.key, {
				context = ("%s:%s_%s"):format(route.key, tostring(action.type), context or "Root"),
				state = route,
				lastState = nextLastState,
				action = action,
				type = type,
			});
		end
	end
end

function NavigationEventManager:_handleRefocus()
	local onEvent = self.props.onEvent
	local navigation = self.props.navigation
	local route = navigation.state.routes[navigation.state.index]

	onEvent(route.key, Events.Refocus)
end

function NavigationEventManager:_emitWillFocus(target, payload)
	if self._lastWillBlurKey == target then
		self._lastWillBlurKey = nil
	end

	if self._lastWillFocusKey == target then
		return
	end

	self._lastDidFocusKey = nil
	self._lastWillFocusKey = target

	local navigation = self.props.navigation
	local onEvent = self.props.onEvent

	onEvent(target, Events.WillFocus, payload);

	if typeof(navigation.state.isTransitioning) ~= "boolean" or
		(navigation.state.isTransitioning ~= true and
			not navigation._dangerouslyGetParent()) -- TODO: what should we do with dangerouslyGetParent
	then
		self:_emitDidFocus(target, payload)
	end
end

function NavigationEventManager:_emitWillBlur(target, payload)
	if self._lastWillFocusKey == target then
		self._lastWillFocusKey = nil
	end

	if self._lastWillBlurKey == target then
		return
	end

	self._lastDidBlurKey = nil
	self._lastWillBlurKey = target

	local navigation = self.props.navigation
	local onEvent = self.props.onEvent

	onEvent(target, Events.WillBlur, payload)

	if typeof(navigation.state.isTransitioning) ~= "boolean" or
		(navigation.state.isTransitioning ~= true and
			not navigation._dangerouslyGetParent())
	then
		self:_emitDidBlur(target, payload)
	end
end

function NavigationEventManager:_emitDidFocus(target, payload)
	if self._lastWillFocusKey ~= target or self._lastDidFocusKey == target then
		return
	end

	self._lastDidFocusKey = target

	local onEvent = self.props.onEvent

	onEvent(target, Events.DidFocus, payload)
end

function NavigationEventManager:_emitDidBlur(target, payload)
	if self._lastWillBlurKey ~= target or self._lastDidBlurKey == target then
		return
	end

	self._lastDidBlurKey = target

	local onEvent = self.props.onEvent

	onEvent(target, Events.DidBlur, payload)
end

function NavigationEventManager:render()
	return nil
end

return NavigationEventManager
