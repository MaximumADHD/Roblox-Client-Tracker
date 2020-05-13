local UIBloxRoot = script.Parent.Parent
local Cryo = require(UIBloxRoot.Parent.Cryo)

local StateTable = {}

StateTable.__index = StateTable

local function validateStateTableItem(item, qualifier)
	local type = typeof(item)
	local isValid = type == "string" or type == "userdata"
	assert(isValid, string.format("%s '%s' must be a string or userdata but is a %s", qualifier, tostring(item), type))
end

--[[
	This class method creates a new StateTable instance that you can use to control complicated
	logic that is based upon your state machine design. Ex:

		self.stateTable = StateTable.new(name, initialState, initialContext, {
			InitialState = {
				EventName1 = { nextState = "StateOne", action = self.actionDoSomething },
				EventName2 = { nextState = "FinalState" } -- actions are optional
			},
			StateOne = {
				EventName1 = { nextState = "FinalState", action = self.actionDoSomethingAtLast },
				EventName3 = { action = self.actionDoSomethingElse } -- will maintain current state
			},
			FinalState = {} -- transitions are optional
		})

	Arguments:
		name 	-		 A debug name for this StateTable. (String)
		initialState 	- Name of the beginning state for this StateTable. (String)
		initialContext 	- A reference to an existing table where you hold all sidecar contextual data
						  that needs to be manipulated by this StateTable's actions. (Table)
		transitionTable	- Description of the state machine structure. (Table)

	The outermost keys in "transitionTable" represent individual states in your design, each of which
	contains a description of the events that can be called while in that state. Calling an event
	triggers a transition to a new state while also (optionally) running an action functor.

	(All states and events must be simple strings or userdata.)
	(If using userdata for states and events, implement a tostring metamethod for ease of debugging.)

	Named events in your state table will be converted into functions that you can call directly.
	Calling these event functions will transition the StateTable to the appropriate nextState and
	call the registered action handler, if any. You may pass arguments to your actions through the
	event function by passing them as a table. Ex:

		self.stateTable.events.EventName1(args)

	The combination of named states and events in StateTable make up the control flow portion of your
	state machine. To run business logic, you need to implement Actions.

	Each action functor accepts four arguments: the current state, the next state, event arguments,
	and the contextual data table that you passed in when you called the event function. Your action
	functor should return a table containing the keys that need to be updated from currentContext.
	The returned table will be merged into currentContext and passed back to your onStateChange
	callback. Ex:

		function actionDoSomething(currentState, nextState, args, currentContext)
			local contextDiff = doSomething(args, currentContext)
			return contextDiff
		end

	Do NOT update your own copy of the StateTable's internal state variable or your context in actions.
	If this is an action-less transition, you'll fail to update it!

	To update your context and own tracking of the current state at the same time, listen to changes
	via StateTable:onStateChange. See the documentation of that method for more details.
]]
function StateTable.new(name, initialState, initialContext, transitionTable)
	assert(typeof(name) == "string", "name must be a string")
	assert(#name > 0, "name must not be an empty string")

	validateStateTableItem(initialState, "initialState")
	assert(initialContext == nil or typeof(initialContext) == "table", "initialContext must be a table or nil")

	assert(typeof(transitionTable) == "table", "transitionTable must be a table")
	assert(typeof(transitionTable[initialState]) == "table", "initialState must be present in transitionTable")

	local self = {}
	setmetatable(self, StateTable)

	self.name = name
	self.currentState = initialState
	self.currentContext = initialContext or {}
	self.transitionTable = {}
	self.events = {}

	for state, eventTable in pairs(transitionTable) do
		validateStateTableItem(state, "state")
		assert(typeof(eventTable) == "table", string.format("state '%s' must map to a table", tostring(state)))

		local parsedEventTable = {}
		for event, eventData in pairs(eventTable) do
			validateStateTableItem(event, "event")
			assert(typeof(eventData) == "table", string.format("event '%s' must map to a table", tostring(event)))

			local nextState = eventData.nextState
			local action = eventData.action

			if nextState ~= nil then
				validateStateTableItem(nextState, "nextState")

				-- Check that the transition lands on a known state
				assert(transitionTable[nextState] ~= nil,
					string.format("nextState '%s' does not exist in transitionTable", tostring(nextState)))
			end

			assert(action == nil or typeof(action) == "function", "action must be a function")

			parsedEventTable[event] = eventData

			-- Create a function to make it easy to call this event
			if self.events[event] == nil then
				self.events[event] = function(args)
					return self:handleEvent(event, args)
				end
			end
		end

		self.transitionTable[state] = parsedEventTable
	end

	-- catch calls to invalid events earlier
	setmetatable(self.events, {
		__index = function(_, event)
			error(string.format("'%s' is not a valid event in StateTable '%s'",
				tostring(event), self.name), 2)
		end
	})

	return self
end

--[[
	It is recommended that you use the auto-generated event functions instead
	of calling this method; see StateTable.new.

	Process an event through this StateTable instance. Pass in the name
	of the event, and optional arguments. The arguments will be passed to the
	registered action handler for the state/event transition, if any.

	This function does not return anything. Listen to changes using
	StateTable:onStateChange if you need to store the current state or use the
	results of an action.
]]
function StateTable:handleEvent(event, args)
	validateStateTableItem(event, "event")
	assert(args == nil or typeof(args) == "table", "args must be nil or valid table")

	local currentState = self.currentState
	local eventMap = self.transitionTable[currentState]

	assert(eventMap ~= nil, "no transition events for current state")

	if eventMap[event] ~= nil then
		local eventData = eventMap[event]
		local nextState = eventData.nextState or currentState
		local action = eventData.action

		local updatedContext = self.currentContext
		if action ~= nil then
			local contextDiff = action(currentState, nextState, args, self.currentContext) or {}
			updatedContext = Cryo.Dictionary.join(self.currentContext, contextDiff)
			self.currentContext = updatedContext
		end

		self.currentState = nextState

		if self.stateChangeHandler ~= nil then
			self.stateChangeHandler(currentState, nextState, updatedContext)
		end
	end
end

--[[
	Register a function to process changes in state. Your function should have
	the following signature and return nothing:

		function handleStateChange(oldState, newState, updatedContext)
			self.currentState = newState
			self.currentContext = updatedContext
		end

	The updatedContext parameter contains the table that was returned by the action
	handler associated with the event transition.
]]
function StateTable:onStateChange(stateChangeHandler)
	assert(stateChangeHandler == nil or typeof(stateChangeHandler) == "function",
		"stateChangeHandler must be nil or a function")
	self.stateChangeHandler = stateChangeHandler
end

return StateTable
