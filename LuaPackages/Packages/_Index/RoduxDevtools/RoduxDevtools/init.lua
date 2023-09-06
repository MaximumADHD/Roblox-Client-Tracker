--!strict

export type EventType = "Reduce" | "Flush"

export type Event = {
	eventType: EventType,
	isStub: boolean?,
	timestamp: number?,
	source: string?,
	props: {
		name: string,
		elapsedMs: number,
		[any]: any,
	},
	altered: {
		skipped: boolean?,
		replaceAction: any?,
	}?,
}

local Devtools = {}
Devtools.__className = "Devtools"
Devtools.__index = Devtools

--[[
	Creates a new Devtools object
]]
function Devtools.new()
	local self = setmetatable({
		_events = table.create(100) :: { Event },
		_eventsIndex = 0,
		_pluginBridge = nil :: BindableEvent?,
		_pluginBridgeListener = nil :: RBXScriptConnection?,
		_pluginBridgeBatchPackets = {},
		_pluginBridgeBatchProcess = nil :: RBXScriptConnection?,
		_source = debug.traceback(),
	}, Devtools)

	self:_findPluginBridge(function(pluginBridge)
		self:_connectPluginBridge(pluginBridge)
	end)

	return self
end

--[[
	Finds and stores the bindable bridge created by the Rodux Devtools plugin, if it exists.
	Passes the bridge to the callback once it has been found.
]]
function Devtools:_findPluginBridge(callback: (BindableEvent) -> ())
	if self._pluginBridge then
		-- Bridge has already been found
		callback(self._pluginBridge)
		return
	end

	local container = workspace.CurrentCamera or workspace

	-- Check for bridge
	local pluginBridge = container:FindFirstChild("__RoduxDevtoolsPluginBridge")
	if pluginBridge and pluginBridge:IsA("BindableEvent") then
		self._pluginBridge = pluginBridge
		callback(pluginBridge)
		return
	end

	-- No bridge exists yet, but a plugin may insert it soon.
	-- Waiting for the bridge should be non-blocking, so that
	-- it doesn't cause startup delay in cases with no bridge like production
	task.defer(function()
		local pluginBridge = container:WaitForChild("__RoduxDevtoolsPluginBridge", 10)
		if self._events == nil then
			-- Devtools has been destroyed while waiting for the bridge
			return
		end

		if pluginBridge and pluginBridge:IsA("BindableEvent") then
			self._pluginBridge = pluginBridge
			callback(pluginBridge)
			return
		end
	end)
end

--[[
	Connects the plugin bridge event and connects the batch process event
]]
function Devtools:_connectPluginBridge(pluginBridge: BindableEvent)
	if not pluginBridge then
		return
	end

	-- Clear old connections
	if self._pluginBridgeListener then
		self._pluginBridgeListener:Disconnect()
		self._pluginBridgeListener = nil
	end
	if self._pluginBridgeBatchProcess then
		self._pluginBridgeBatchProcess:Disconnect()
		self._pluginBridgeBatchProcess = nil
	end

	self._pluginBridgeListener = pluginBridge.Event:Connect(function(action, ...)
		if action == "DevtoolsCall" then
			local args = { ... }
			local func = self[args[1]]
			if not func then
				return
			end
			table.remove(args, 1)
			pcall(func, self, table.unpack(args))
		end
	end)

	self._pluginBridgeBatchProcess = game:GetService("RunService").Heartbeat:Connect(function()
		if next(self._pluginBridgeBatchPackets) == nil then
			-- Nothing to send this heartbeat
			return
		end

		pluginBridge:Fire("PluginBatchPackets", self._pluginBridgeBatchPackets)
		table.clear(self._pluginBridgeBatchPackets)
	end)

	-- Share all the events (in stub form) that existed prior to connection
	if #self._events > 0 then
		local eventStubs = {}
		for index, event in self._events do
			eventStubs[index] = {
				isStub = true,
				eventType = event.eventType,
				props = {
					elapsedMs = event.props.elapsedMs,
					name = event.props.name,
				},
			}
		end
		self:_firePluginBridge("updateEvents", eventStubs)
	end
end

--[[
	Fires the arguments over the pluginBridge event in next batch
]]
function Devtools:_firePluginBridge(type, props)
	local pluginBridge = self._pluginBridge
	if not pluginBridge then
		return
	end

	table.insert(self._pluginBridgeBatchPackets, {
		type = type,
		props = props,
	})
end

--[[
	Overwrites the store's reducer and flushHandler with wrapped versions
	that contain logging and profiling
]]
function Devtools:_hookIntoStore(store)
	self._store = store

	-- Find the first non-Rodux  line in the traceback for source info
	local traceLines = string.split(debug.traceback(), "\n")
	self._source = traceLines[1]
	for i, trace in traceLines do
		if string.find(trace, "RoduxDevtools.-hookIntoStore") or string.find(trace, "Store.-new") then
			continue
		end
		self._source = trace
		break
	end

	self._originalReducer = store._reducer
	store._reducer = function(state: any, action: any): any
		local startClock = os.clock()
		local result = self._originalReducer(state, action)
		local stopClock = os.clock()

		self:_addEvent("Reduce", {
			name = action.type or tostring(action),
			elapsedMs = (stopClock - startClock) * 1000,
			action = action,
			state = result,
		})
		return result
	end

	self._originalFlushHandler = store._flushHandler
	store._flushHandler = function(...)
		local startClock = os.clock()
		self._originalFlushHandler(...)
		local stopClock = os.clock()

		self:_addEvent("Flush", {
			name = "@@FLUSH",
			elapsedMs = (stopClock - startClock) * 1000,
			listenerCount = #store.changed._listeners,
			listeners = table.clone(store.changed._listeners),
		})
	end
end

--[[
	Adds an event to the log
	Automatically adds event.timestamp, event.source, and event.props.lastState
]]
function Devtools:_addEvent(eventType: EventType, props: { [any]: any })
	local event = {
		eventType = eventType,
		source = self._source,
		timestamp = DateTime.now().UnixTimestampMillis,
		props = props,
	} :: Event

	-- Iterate backwards to find last known state
	local lastState = nil
	for i = (self._eventsIndex or 0), 1, -1 do
		local priorEvent = self._events[i]
		if priorEvent.props.state then
			lastState = priorEvent.props.state
			break
		end
	end
	event.props.lastState = lastState

	self._eventsIndex = (self._eventsIndex or 0) + 1
	self._events[self._eventsIndex] = event

	-- Send the plugin a stub of this event
	-- (the plugin can request more info on it on demand)
	self:_firePluginBridge("updateEvent", {
		index = self._eventsIndex,
		event = {
			isStub = true,
			eventType = eventType,
			props = {
				elapsedMs = event.props.elapsedMs,
				name = event.props.name,
			},
		},
	})
end

--[[
	Updates the plugin's stub with the full event
]]
function Devtools:_fillPluginStubAtIndex(index: number)
	local event = self._events[index]
	if not event then
		return
	end

	self:_firePluginBridge("updateEvent", {
		index = index,
		event = event,
	})
end

--[[
	Sets the store state and causes a flush on the next heartbeat
]]
function Devtools:_setState(state: any, lastState: any?)
	if not lastState then
		lastState = self._store._state
	end

	self._store._state = state
	self._store._lastState = lastState
	self._store._mutatedSinceFlush = true
end

--[[
	Empties the event log
]]
function Devtools:Clear()
	self._eventsIndex = 0
	self._events = table.create(100) :: { Event }
end

--[[
	Destroys and cleans up the devtools object
]]
function Devtools:Destroy()
	if self._pluginBridgeListener then
		self._pluginBridgeListener:Disconnect()
	end
	if self._pluginBridgeBatchProcess then
		self._pluginBridgeBatchProcess:Disconnect()
	end
	self:Clear()
	table.clear(self)
	setmetatable(self, nil)
end

--[[
	Returns a shallow copy of the event log
]]
function Devtools:GetLoggedEvents()
	return table.clone(self._events)
end

--[[
	Returns an array of the logged events of eventType
]]
function Devtools:GetLoggedEventsOfType(eventType: string)
	local events, i = {}, 0
	for _, event in self._events do
		if event.eventType == eventType then
			i += 1
			events[i] = event
		end
	end
	return events
end

--[[
	Returns an array of reduce events that contain an action of actionType
]]
function Devtools:GetReducedActionsOfType(actionType: string)
	local events, i = {}, 0
	for _, event in self._events do
		if type(event.props.action) == "table" and event.props.action.type == actionType then
			i += 1
			events[i] = event
		end
	end
	return events
end

--[[
	Sets the store state back to the state it was at when the event at index completed
	Adds a @@REVERT_TO_STATE action to the log for UX purposes
]]
function Devtools:RevertToStateAtIndex(index: number)
	if type(index) ~= "number" then
		return
	end

	local startClock = os.clock()

	local event, state, stateIndex
	for i = index, 1, -1 do
		event = self._events[i]
		if event.props.state then
			state = event.props.state
			stateIndex = i
			break
		end
	end

	if not state then
		return
	end

	local lastState = nil
	for i = stateIndex - 1, 1, -1 do
		local priorEvent = self._events[i]
		if priorEvent.props.state then
			lastState = priorEvent.props.state
			break
		end
	end

	self:_setState(state, lastState)

	local stopClock = os.clock()

	self:_addEvent("Reduce", {
		isDevtools = true,
		name = "@@REVERT_TO_STATE",
		elapsedMs = (stopClock - startClock) * 1000,
		action = {
			type = "@@REVERT_TO_STATE",
			revertTarget = {
				name = event.props.name,
				action = event.props.action,
				eventIndex = stateIndex,
			},
		},
		state = state,
	})
end

--[[
	Replaces the action in an event at the given index,
	then recomputes current state given that change
]]
function Devtools:ReplaceActionAtIndex(index: number, newAction: {}?)
	if type(index) ~= "number" then
		return
	end
	if newAction ~= nil and type(newAction) ~= "table" then
		return
	end

	local event = self._events[index]
	if (event == nil) or (event.props.action == nil) then
		-- Invalid event at index
		return
	end

	event.altered = event.altered or {}
	event.altered.replaceAction = newAction

	self:_firePluginBridge("updateEvent", { index = index, event = event })
	self:_recomputeStateWithAlterations()
end

--[[
	Sets the reduce action event at index to be skipped,
	then recomputes current state given that change
]]
function Devtools:UndoActionAtIndex(index: number)
	if type(index) ~= "number" then
		return
	end

	local event = self._events[index]
	if (event == nil) or (event.props.action == nil) then
		-- Invalid event at index
		return
	end

	event.altered = event.altered or {}
	if event.altered.skipped then
		-- Already undone action
		return
	end

	event.altered.skipped = true

	self:_firePluginBridge("updateEvent", { index = index, event = event })
	self:_recomputeStateWithAlterations()
end

--[[
	Sets the reduce action event at index to not be skipped,
	then recomputes current state given that change
]]
function Devtools:RedoActionAtIndex(index: number)
	if type(index) ~= "number" then
		return
	end

	local event = self._events[index]
	if (event == nil) or (event.props.action == nil) then
		-- Invalid event at index
		return
	end

	event.altered = event.altered or {}
	if event.altered.skipped == false then
		-- Already redid action
		return
	end
	event.altered.skipped = false

	self:_firePluginBridge("updateEvent", { index = index, event = event })
	self:_recomputeStateWithAlterations()
end

--[[
	Recomputes the store's current state based on changes that
	the devtools has made to the store's history.
	Adds a @@RECOMPUTE_STATE_WITH_ALTERATIONS action to the log for UX purposes
]]
function Devtools:_recomputeStateWithAlterations()
	if #self._events == 0 then
		return
	end

	local startClock = os.clock()

	-- First, we need to find the first historical change
	-- We want to start from there to avoid wastefully recomputing
	-- history that has no alterations
	local firstChangeIndex, state = nil, nil
	for i, event in self._events do
		if event.altered and next(event.altered) then
			firstChangeIndex = i
			break
		end
		if event.props.state then
			state = event.props.state
		end
	end

	if (not firstChangeIndex) or not state then
		return
	end

	-- Then, we begin to dispatch actions from that point, while respecting
	-- the modifications we made to these historical actions
	local start, finish = firstChangeIndex, #self._events
	local lastState = nil
	local skippedActions, replacedActions = {}, {}
	for i = start, finish do
		local event = self._events[i]
		if not event then
			continue
		end

		local action = event.props.action
		if action == nil then
			-- Lacks action, not relevant
			continue
		end

		if event.props.isDevtools then
			-- Skip custom devtools actions as they aren't truly in the history,
			-- they're just listed for UX purposes
			continue
		end

		if event.altered and event.altered.skipped then
			-- Altered to skip
			table.insert(skippedActions, {
				name = event.props.name,
				action = event.props.action,
				eventIndex = i,
			})
			continue
		end
		if event.altered and event.altered.replaceAction then
			-- Altered with replacement action
			table.insert(replacedActions, {
				name = event.props.name,
				originalAction = event.props.action,
				replacedAction = event.altered.replaceAction,
				eventIndex = i,
			})
			action = event.altered.replaceAction
		end

		lastState = table.clone(state)
		state = self._originalReducer(state, action)
	end

	-- Finally, we force set the resultant state
	self:_setState(state, lastState)

	local stopClock = os.clock()

	self:_addEvent("Reduce", {
		isDevtools = true,
		name = "@@RECOMPUTE_STATE_WITH_ALTERATIONS",
		elapsedMs = (stopClock - startClock) * 1000,
		action = {
			type = "@@RECOMPUTE_STATE_WITH_ALTERATIONS",
			skippedActions = skippedActions,
			replacedActions = replacedActions,
		},
		state = state,
	})
end

return Devtools
