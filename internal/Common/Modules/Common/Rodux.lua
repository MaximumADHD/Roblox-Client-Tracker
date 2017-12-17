local RunService = game:GetService("RunService")

local Common = script.Parent
local Signal = require(Common.Signal)
local NoYield = require(Common.NoYield)

local Rodux = {}

local Store = {}

Rodux.Store = Store

-- This value is exposed as a private value so that the test code can stay in
-- sync with what event we listen to for dispatching the Changed event.
-- It may not be Heartbeat in the future.
Store._flushEvent = RunService.Heartbeat

Store.__index = Store

--[[
	Create a new Store whose state is transformed by the given reducer function.

	Each time an action is dispatched to the store, the new state of the store
	is given by:

		state = reducer(state, action)

	Reducers do not mutate the state object, so the original state is still
	valid.
]]
function Store.new(reducer, initialState)
	assert(type(reducer) == "function", "Bad argument #1 to Store.new, expected function.")

	local self = {
		Reducer = reducer,
	}

	self._state = self.Reducer(initialState, {})

	self._lastState = self._state
	self._mutatedSinceFlush = false
	self._connections = {}

	self.Changed = Signal.new()

	setmetatable(self, Store)

	local connection = self._flushEvent:Connect(function()
		self:Flush()
	end)
	table.insert(self._connections, connection)

	return self
end

--[[
	Get the current state of the Store. Do not mutate this!
]]
function Store:GetState()
	return self._state
end

--[[
	Dispatch an action to the store. This allows the store's reducer to mutate
	the state of the application by creating a new copy of the state.

	Listeners on the Changed event of the store are notified when the state
	changes, but not necessarily on every Dispatch.

	Pass a function to dispatch a thunk.
]]
function Store:Dispatch(action)
	if type(action) == "function" then
		local result = action(self)

		return result
	else
		self._state = self.Reducer(self._state, action)
		self._mutatedSinceFlush = true
	end
end

--[[
	Marks the store as deleted, disconnecting any outstanding connections.
]]
function Store:Destruct()
	for _, connection in ipairs(self._connections) do
		connection:Disconnect()
	end

	self._connections = nil
end

--[[
	Flush all pending actions since the last change event was dispatched.
]]
function Store:Flush()
	if not self._mutatedSinceFlush then
		return
	end

	self._mutatedSinceFlush = false

	-- On self.Changed:Fire, further actions may be immediately dispatched,
	-- in which case self._lastState will be set to the most recent self._state,
	-- unless we cache this value first
	local state = self._state

	-- If a Changed listener yields, *very* surprising bugs can ensue.
	-- Because of that, Changed listeners cannot yield.
	NoYield(function()
		self.Changed:Fire(state, self._lastState)
	end)

	self._lastState = state
end

return Rodux