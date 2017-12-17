local RunService = game:GetService("RunService")

local Modules = script.Parent
local Signal = require(Modules.Signal)
local ActionDebug = require(Modules.Debug.ActionDebug)

local Store = {}

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
	local self = {
		Reducer = reducer,
	}

	self._state = self.Reducer(initialState, {})

	self._mutatedSinceFlush = false
	self._lastState = self._state
	self._pendingActions = {}
	self._connections = {}

	self.Changed = Signal.new()

	setmetatable(self, Store)

	local connection = RunService.Heartbeat:Connect(function()
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
	local actionId = ActionDebug:AddAction(action)

	if type(action) == "function" then
		local result = action(self)

		ActionDebug:FinishAction(actionId)

		return result
	else

		self._state = self.Reducer(self._state, action)

		ActionDebug:SetActionMutated(actionId)

		self._mutatedSinceFlush = true
		self._pendingActions[actionId] = true
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
	self.Changed:Fire(state, self._lastState)

	self._lastState = state

	for actionId in pairs(self._pendingActions) do
		ActionDebug:FinishAction(actionId)
	end

	self._pendingActions = {}
end

return Store