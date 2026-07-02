--!strict
--[[
	A middleware that allows for functions to be dispatched with an extra
	argument for convenience. Functions will receive two arguments:
	the store itself and the extra argument provided initially to makeThunkMiddleware.

	This middleware consumes the function; middleware further down the chain
	will not receive it.
]]
local function tracebackReporter(message)
	return debug.traceback(message)
end

local function makeThunkMiddleware(extraArgument)
	local function thunkMiddleware(nextDispatch, store)
		return function(action)
			if typeof(action) == "function" then
				local ok, result = xpcall(function()
					return action(store, extraArgument)
				end, tracebackReporter)

				if not ok then
					-- report the error and move on so it's non-fatal app
					store._errorReporter.reportReducerError(store:getState(), action, {
						message = "Caught error in thunk",
						thrownValue = result,
					})
					return nil
				end

				return result
			end

			return nextDispatch(action)
		end
	end

	return thunkMiddleware
end

return makeThunkMiddleware
