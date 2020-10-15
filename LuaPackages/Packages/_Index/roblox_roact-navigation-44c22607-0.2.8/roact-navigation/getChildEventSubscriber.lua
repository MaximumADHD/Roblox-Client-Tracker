local Cryo = require(script.Parent.Parent.Cryo)
local NavigationEvents = require(script.Parent.NavigationEvents)
local createSubscriberEventsStateTable = require(script.Parent.utils.createSubscriberEventsStateTable)
local validate = require(script.Parent.utils.validate)

--[[
	This utility will fire focus and blur events for the child based upon action events
	and the current navigation state.

	Args:
		addListener		- Functor to add an event listener to navigation dispatch system.
		key				- The key for the subscribing child.
		initialState	- Initial state to set for the child event monitor (optional).
]]
return function(addListener, key, initialState)
	initialState = initialState or "Blurred"

	local upstreamSubscribers = {}

	local subscriberMap = {
		[NavigationEvents.Action] = {},
		[NavigationEvents.WillFocus] = {},
		[NavigationEvents.DidFocus] = {},
		[NavigationEvents.WillBlur] = {},
		[NavigationEvents.DidBlur] = {},
		[NavigationEvents.Refocus] = {},
	}

	local function emit(subscriberType, payload)
		local payloadWithType = Cryo.Dictionary.join(payload or {}, { type = subscriberType })
		local subscribers = subscriberMap[subscriberType]
		if subscribers then
			for _, subs in ipairs(subscribers) do
				subs(payloadWithType)
			end
		end
	end

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

	-- Each event subscriber (e.g. screen) has its own state table that tracks the events which
	-- drive focused/unfocused transitions. Screens all start life blurred, including the initial pages
	-- displayed by a navigator. The latter need special treatment so they still receive their
	-- willFocus+didFocus events.
	local eventStateTable = createSubscriberEventsStateTable(key, initialState, emit, disconnectAll)

	for eventType in pairs(subscriberMap) do
		upstreamSubscribers[eventType] = addListener(eventType, function(payload)
			-- Refocus events don't use a specialized child payload or T/A event key marks. Propagate immediately.
			-- We also allow arbitrary payloads with Refocus so we do not want to try to parse the table.
			if eventType == NavigationEvents.Refocus then
				eventStateTable:handleEvent(tostring(NavigationEvents.Refocus), payload)
				return
			end

			local state = payload.state
			local lastState = payload.lastState
			local action = payload.action

			local routes = state and state.routes
			local lastRoutes = lastState and lastState.routes

			local focusKey = routes and routes[state.index].key or nil
			local isChildFocused = focusKey == key
			local isTransitioning = state and state.isTransitioning or false

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

			-- State table figures out all the details of what conditions lead to event propagation based
			-- upon a string eventKey.
			local activeKey = isChildFocused and "A" or ""
			local transitioningKey = isTransitioning and "T" or ""
			local eventKey = tostring(eventType) .. activeKey .. transitioningKey

			eventStateTable:handleEvent(eventKey, childPayload)

			-- Regardless of what state transition we've propagated earlier, shut down the state machine
			-- if the route has been removed from the nav history because that means the page is gone.
			-- (This also disconnects the event listeners.)
			if not newRoute then
				eventStateTable.events.shutdown()
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
