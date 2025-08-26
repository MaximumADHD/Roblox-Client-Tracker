--[=[
	Creates and returns a new debounced version of the passed function which postpones execution until after _wait_ seconds have elapsed since the last invocation.

	@param func The function to debounce.
	@param wait The number of seconds to delay.
	@return The new debounced function.
]=]
local function debounce<T>(func: T & (...any) -> ...any, wait: number): T
	-- `& (...any) -> ...any` in the function type is a funky way to mimick `T extends function`
	local delayedCall = nil
	return (
		function(...)
			if delayedCall then
				task.cancel(delayedCall)
			end
			delayedCall = task.delay(wait, func, ...)
		end :: unknown
	) :: T
end

return debounce
