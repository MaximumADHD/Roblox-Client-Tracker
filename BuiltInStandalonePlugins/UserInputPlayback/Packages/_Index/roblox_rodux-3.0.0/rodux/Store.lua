local RunService = game:GetService("RunService")

local Signal = require(script.Parent.Signal)
local NoYield = require(script.Parent.NoYield)

local ACTION_LOG_LENGTH = 3

local rethrowErrorReporter = {
	reportReducerError = function(prevState, action, errorResult)
		error(string.format("Received error: %s\n\n%s", errorResult.message, errorResult.thrownValue))
	end,
	reportUpdateError = function(prevState, currentState, lastActions, errorResult)
		error(string.format("Received error: %s\n\n%s", errorResult.message, errorResult.thrownValue))
	end,
}

local function tracebackReporter(message)
	return debug.traceback(tostring(message))
end

local Store = {}

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
function Store.new(reducer, initialState, middlewares, errorReporter)
	assert(typeof(reducer) == "function", "Bad argument #1 to Store.new, expected function.")
	assert(middlewares == nil or typeof(middlewares) == "table", "Bad argument #3 to Store.new, expected nil or table.")
	if middlewares ~= nil then
		for i=1, #middlewares, 1 do
			assert(
				typeof(middlewares[i]) == "function",
				("Expected the middleware ('%s') at index %d to be a function."):format(tostring(middlewares[i]), i)
			)
		end
	end

	local self = {}

	self._errorReporter = errorReporter or rethrowErrorReporter
	self._isDispatching = false
	self._reducer = reducer
	local initAction = {
		type = "@@INIT",
	}
	self._actionLog = { initAction }
	local ok, result = xpcall(function()
		self._state = reducer(initialState, initAction)
	end, tracebackReporter)
	if not ok then
		self._errorReporter.reportReducerError(initialState, initAction, {
			message = "Caught error in reducer with init",
			thrownValue = result,
		})
		self._state = initialState
	end
	self._lastState = self._state

	self._mutatedSinceFlush = false
	self._connections = {}

	self.changed = Signal.new(self)

	setmetatable(self, Store)

	local connection = self._flushEvent:Connect(function()
		self:flush()
	end)
	table.insert(self._connections, connection)

	if middlewares then
		local unboundDispatch = self.dispatch
		local dispatch = function(...)
			return unboundDispatch(self, ...)
		end

		for i = #middlewares, 1, -1 do
			local middleware = middlewares[i]
			dispatch = middleware(dispatch, self)
		end

		self.dispatch = function(_self, ...)
			return dispatch(...)
		end
	end

	return self
end

--[[
	Get the current state of the Store. Do not mutate this!
]]
function Store:getState()
	if self._isDispatching then
		error(("You may not call store:getState() while the reducer is executing. " ..
			"The reducer (%s) has already received the state as an argument. " ..
			"Pass it down from the top reducer instead of reading it from the store."):format(tostring(self._reducer)))
	end

	return self._state
end

--[[
	Dispatch an action to the store. This allows the store's reducer to mutate
	the state of the application by creating a new copy of the state.

	Listeners on the changed event of the store are notified when the state
	changes, but not necessarily on every Dispatch.
]]
function Store:dispatch(action)
	if typeof(action) ~= "table" then
		error(("Actions must be tables. " ..
			"Use custom middleware for %q actions."):format(typeof(action)),
			2
		)
	end

	if action.type == nil then
		error("Actions may not have an undefined 'type' property. " ..
			"Have you misspelled a constant? \n" ..
			tostring(action), 2)
	end

	if self._isDispatching then
		error("Reducers may not dispatch actions.")
	end

	local ok, result = pcall(function()
		self._isDispatching = true
		self._state = self._reducer(self._state, action)
		self._mutatedSinceFlush = true
	end)

	self._isDispatching = false

	if not ok then
		self._errorReporter.reportReducerError(
			self._state,
			action,
			{
				message = "Caught error in reducer",
				thrownValue = result,
			}
		)
	end

	if #self._actionLog == ACTION_LOG_LENGTH then
		table.remove(self._actionLog, 1)
	end
	table.insert(self._actionLog, action)
end

--[[
	Marks the store as deleted, disconnecting any outstanding connections.
]]
function Store:destruct()
	for _, connection in ipairs(self._connections) do
		connection:Disconnect()
	end

	self._connections = nil
end

--[[
	Flush all pending actions since the last change event was dispatched.
]]
function Store:flush()
	if not self._mutatedSinceFlush then
		return
	end

	self._mutatedSinceFlush = false

	-- On self.changed:fire(), further actions may be immediately dispatched, in
	-- which case self._lastState will be set to the most recent self._state,
	-- unless we cache this value first
	local state = self._state

	local ok, errorResult = xpcall(function()
		-- If a changed listener yields, *very* surprising bugs can ensue.
		-- Because of that, changed listeners cannot yield.
		NoYield(function()
			self.changed:fire(state, self._lastState)
		end)
	end, tracebackReporter)

	if not ok then
		self._errorReporter.reportUpdateError(
			self._lastState,
			state,
			self._actionLog,
			{
				message = "Caught error flushing store updates",
				thrownValue = errorResult,
			}
		)
	end

	self._lastState = state
end

return Store
