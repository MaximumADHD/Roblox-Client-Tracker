--!nonstrict
local Foundation = script:FindFirstAncestor("Foundation")
local ControlState = require(Foundation.Enums.ControlState)
local ControlStateEvent = require(Foundation.Enums.ControlStateEvent)
local Logger = require(Foundation.Utility.Logger)
type ControlState = ControlState.ControlState
type ControlStateEvent = ControlStateEvent.ControlStateEvent

local StateTable = {}

StateTable.__index = StateTable

export type TransitionTable<S, E> = { [S]: { [E]: { nextState: S } } }

--[[
	This class method creates a new StateTable instance that you can use to control complicated
	logic that is based upon your state machine design. Ex:

		self.stateTable = StateTable.new(name, initialState, initialContext, {
			InitialState = {
				EventName1 = { nextState = "StateOne" },
				EventName2 = { nextState = "FinalState" },
			},
			StateOne = {
				EventName1 = { nextState = "FinalState" },
			},
			FinalState = {}, -- transitions are optional
		})

	Arguments:
		name 	-		 A debug name for this StateTable. (String)
		initialState 	- Name of the beginning state for this StateTable. (String)
		transitionTable	- Description of the state machine structure. (Table)

	The outermost keys in "transitionTable" represent individual states in your design, each of which
	contains a description of the events that can be called while in that state. Calling an event
	triggers a transition to a new state.

	All states and events must be strings.

	Named events in your state table will be converted into functions that you can call directly.
	Calling these event functions will transition the StateTable to the appropriate nextState and
	call the registered state handler, if any. Ex:

		self.stateTable.events.EventName1()

	The combination of named states and events in StateTable make up the control flow portion of your
	state machine. To run business logic, you need to implement Actions.

	To update your context and own tracking of the current state at the same time, listen to changes
	via StateTable:onStateChange. See the documentation of that method for more details.
]]
function StateTable.new<S, E>(name: string, initialState: S, transitionTable: TransitionTable<S, E>)
	assert(#name > 0, "name must not be an empty string")
	assert(transitionTable[initialState] ~= nil, "initialState must be present in transitionTable")

	local self = {}
	setmetatable(self, StateTable)

	self.name = name
	self.currentState = initialState
	self.transitionTable = {}
	self.events = {}

	for state, eventTable in transitionTable do
		local parsedEventTable = {}
		for event, eventData in eventTable do
			local nextState = eventData.nextState

			if nextState ~= nil then
				-- Check that the transition lands on a known state
				assert(transitionTable[nextState] ~= nil, "nextState does not exist in transitionTable")
			end

			parsedEventTable[event] = eventData

			-- Create a function to make it easy to call this event
			if self.events[event] == nil then
				self.events[event] = function()
					return self:handleEvent(event)
				end
			end
		end

		self.transitionTable[state] = parsedEventTable
	end

	-- catch calls to invalid events earlier
	setmetatable(self.events, {
		__index = function(_, event)
			error(string.format("'%s' is not a valid event in StateTable '%s'", tostring(event), self.name), 2)
		end,
	})

	return self
end

--[[
	It is recommended that you use the auto-generated event functions instead
	of calling this method; see StateTable.new.

	Process an event through this StateTable instance. Pass in the name
	of the event.

	This function does not return anything. Listen to changes using
	StateTable:onStateChange if you need to store the current state or use the
	results of an action.
]]
function StateTable:handleEvent(event: string)
	local currentState = self.currentState
	local eventMap = self.transitionTable[currentState]

	local eventData = eventMap[event]

	if eventData == nil then
		Logger:debug("No transition found for event " .. event .. " in state " .. currentState)
		return
	end

	local nextState = eventData.nextState

	self.currentState = nextState

	if self.stateChangeHandler ~= nil then
		self.stateChangeHandler(nextState)
	end
end

--[[
	Register a function to process changes in state. Your function should have
	the following signature and return nothing:

		function handleStateChange(state)
			self.currentState = state
		end
]]
function StateTable:onStateChange(stateChangeHandler: ((state: string) -> ())?)
	self.stateChangeHandler = stateChangeHandler
end

return StateTable
