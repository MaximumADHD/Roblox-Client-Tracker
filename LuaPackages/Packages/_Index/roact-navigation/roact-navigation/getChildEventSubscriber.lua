local Cryo = require(script.Parent.Parent.Cryo)
local NavigationEvents = require(script.Parent.NavigationEvents)
local validate = require(script.Parent.utils.validate)

--[[
	This utility will fire focus and blur events for the child based upon action events
	and the current navigation state.
]]
return function(addListener, key, initialLastFocusEvent)
	initialLastFocusEvent = initialLastFocusEvent or NavigationEvents.DidBlur

	local upstreamSubscribers = {}

	local subscriberMap = {
		[NavigationEvents.Action] = {},
		[NavigationEvents.WillFocus] = {},
		[NavigationEvents.DidFocus] = {},
		[NavigationEvents.WillBlur] = {},
		[NavigationEvents.DidBlur] = {},
		[NavigationEvents.Refocus] = {},
	}

	local function disconnectAll()
		for _, subscriberList in pairs(subscriberMap) do
			for x in pairs(subscriberList) do
				subscriberList[x] = nil
			end
		end

		for _, subs in pairs(upstreamSubscribers) do
			if subs then
				subs.disconnect()
			end
		end
	end

	local function emit(subscriberType, payload)
		local payloadWithType = Cryo.Dictionary.join(payload or {}, { type = subscriberType })
		local subscribers = subscriberMap[subscriberType]
		if subscribers then
			for _, subs in ipairs(subscribers) do
				subs(payloadWithType)
			end
		end
	end

	-- lastFocusEvent keeps track of focus state for one route. We assume that we are initially
	-- in blurred state. If we are focused on initialization, then the first NavigationEvents.Action
	-- will cause onFocus+willFocus to fire because we started off 'blurred'.
	local lastFocusEvent = initialLastFocusEvent

	for eventType in pairs(subscriberMap) do
		upstreamSubscribers[eventType] = addListener(eventType, function(payload)
			if eventType == NavigationEvents.Refocus then
				emit(eventType, payload)
				return
			end

			local state = payload.state
			local lastState = payload.lastState
			local action = payload.action

			local lastRoutes = lastState and lastState.routes
			local routes = state and state.routes

			local focusKey = routes and routes[state.index].key or nil
			local isChildFocused = focusKey == key

			local lastRoute = nil
			if lastRoutes then
				for _, route in ipairs(lastRoutes) do
					if route.key == key then
						lastRoute = route
						break
					end
				end
			end

			local newRoute = nil
			if routes then
				for _, route in ipairs(routes) do
					if route.key == key then
						newRoute = route
						break
					end
				end
			end

			local childPayload = {
				context = string.format("%s:%s_%s", key, tostring(action.type), payload.context or 'Root'),
				state = newRoute,
				lastState = lastRoute,
				action = action,
				type = eventType,
			}

			local isTransitioning = state and state.isTransitioning or false

			local previouslyLastFocusEvent = lastFocusEvent

			if lastFocusEvent == NavigationEvents.DidBlur then
				-- Child is currently blurred; look for willFocus conditions
				if isChildFocused and (eventType == NavigationEvents.WillFocus
					or eventType == NavigationEvents.Action) then
					lastFocusEvent = NavigationEvents.WillFocus
					emit(lastFocusEvent, childPayload)
				end
			end

			if lastFocusEvent == NavigationEvents.WillFocus then
				-- We are mid-focus. Look for didFocus conditions. If state.isTransitioning is false
				-- then we know this child event happens immediately after willFocus
				if (eventType == NavigationEvents.DidFocus or eventType == NavigationEvents.Action)
					and isChildFocused and not isTransitioning then
					lastFocusEvent = NavigationEvents.DidFocus
					emit(lastFocusEvent, childPayload)
				end
			end

			if lastFocusEvent == NavigationEvents.DidFocus then
				-- The child is currently focused. Look for blurring events.
				if not isChildFocused or eventType == NavigationEvents.WillBlur then
					lastFocusEvent = NavigationEvents.WillBlur
					emit(lastFocusEvent, childPayload)
				elseif eventType == NavigationEvents.Action
					and previouslyLastFocusEvent == NavigationEvents.DidFocus then
					-- While focused, pass action events to children to be handled by focused grandchildren
					emit(NavigationEvents.Action, childPayload)
				end
			end

			if lastFocusEvent == NavigationEvents.WillBlur then
				-- The child is mid-blur. Wait for transition to end.
				if eventType == NavigationEvents.Action and not isChildFocused and not isTransitioning then
					-- Child is done blurring because transitioning ended or there is no transition to do
					lastFocusEvent = NavigationEvents.DidBlur
					emit(lastFocusEvent, childPayload)
				elseif eventType == NavigationEvents.DidBlur then
					-- Pass through parent's DidBlur event
					lastFocusEvent = NavigationEvents.DidBlur
					emit(lastFocusEvent, childPayload)
				elseif eventType == NavigationEvents.Action and isChildFocused and isTransitioning then
					lastFocusEvent = NavigationEvents.WillFocus
					emit(lastFocusEvent, childPayload)
				end
			end

			if lastFocusEvent == NavigationEvents.DidBlur and not newRoute then
				-- Page is dead, disconnect subscribers
				disconnectAll()
			end
		end)
	end

	return {
		addListener = function(eventType, eventHandler)
			local subscribers = subscriberMap[eventType]
			validate(subscribers ~= nil, "Invalid event type '%s'", tostring(eventType))
			validate(type(eventHandler) == "function",
				"eventHandler for '%s' must be a function", tostring(eventType))
			table.insert(subscribers, eventHandler)
			return {
				disconnect = function()
					for idx, subs in ipairs(subscribers) do
						if subs == eventHandler then
							table.remove(subscribers, idx)
							break
						end
					end
				end
			}
		end,
		emit = function(eventType, payload)
			validate(eventType == NavigationEvents.Refocus,
				"navigation.emit only supports NavigationEvents.Refocus currently.")
			validate(payload == nil or type(payload) == "table",
				"navigation.emit payloads must be a table or nil")
			emit(eventType, payload)
		end,
	}
end
