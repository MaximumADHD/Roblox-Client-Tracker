--[[
	Calls a function and throws an error if it attempts to yield.

	Pass any number of arguments to the function after the callback.

	This function supports multiple return; all results returned from the
	given function will be returned.
]]

local FFlagDebugTracebackOptionalCoroutineArg = settings():GetFFlag("DebugTracebackOptionalCoroutineArg")

local function resultHandler(co, ok, ...)
	if not ok then
		local err = (...)
		error(err, 2)
	end

	if coroutine.status(co) ~= "dead" then
		if FFlagDebugTracebackOptionalCoroutineArg then
			error(debug.traceback(co, "Attempted to yield inside Changed event!"), 2)
		else
			error("Attempted to yield inside Changed event!", 2)
		end
	end

	return ...
end

local function NoYield(callback, ...)
	local co = coroutine.create(callback)

	return resultHandler(co, coroutine.resume(co, ...))
end

return NoYield