local Dash = script.Parent
local assign = require(Dash.assign)

type DebounceOptions = {
	leading: boolean?,
	trailing: boolean?,
}

type DebounceOptionsInternal = {
	leading: boolean,
	trailing: boolean,
}

-- `& (...any) -> ...any` in the function type is a funky way to mimick `T extends function`
type AnyVoidFunction = (...any) -> ()
type Debounced<T> = T & AnyVoidFunction

--[=[
	Creates and returns a new debounced version of the passed function which postpones execution until after
	_wait_ seconds have elapsed since the last invocation.

	@param func The function to debounce.
	@param wait The number of seconds to delay.
	@param options Optional debounce options:
		- leading: boolean? (if true, call at the start of the delay; default false)
		- trailing: boolean? (if true, call at the end of the delay; default true)
	@return The new debounced function.
]=]

local function debounce<T>(func: T & AnyVoidFunction, wait: number, options: DebounceOptions?): Debounced<T>
	local defaultOptions: DebounceOptionsInternal = {
		leading = false,
		trailing = true,
	}

	local resolvedOptions: DebounceOptionsInternal = assign(defaultOptions, options)

	local callId = 0
	local scheduledThread: thread? = nil
	local isLeadingCalled = false
	local fn = function() end

	if resolvedOptions.trailing then
		fn = function(currentCallId: number, shouldCallLeading: boolean, ...)
			if callId == currentCallId then
				-- Reset leading flag for next cycle
				isLeadingCalled = false
				-- Only call if this wasn't already called by leading
				if not shouldCallLeading then
					(func :: AnyVoidFunction)(...)
				end
			end
		end
	-- If trailing is disabled, reset leading flag after delay
	elseif resolvedOptions.leading then
		fn = function(currentCallId: number)
			if callId == currentCallId then
				isLeadingCalled = false
			end
		end
	end

	return function(...)
		callId += 1
		local currentCallId = callId
		local shouldCallLeading = resolvedOptions.leading and not isLeadingCalled

		-- Clear existing timeout
		if scheduledThread then
			task.cancel(scheduledThread)
			scheduledThread = nil
		end

		-- Call leading if this is the first call and leading is enabled
		if shouldCallLeading then
			isLeadingCalled = true;
			(func :: AnyVoidFunction)(...)
		end

		-- Set up trailing call if enabled
		scheduledThread = task.delay(wait, fn, currentCallId, shouldCallLeading, ...)
	end :: Debounced<T>
end

return debounce
