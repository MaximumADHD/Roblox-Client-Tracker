--[=[
	Returns `true` if the value can be called i.e. you can write `value(...)`.

	@param value The value to check if it's callable.
	@return `true` if the value is callable, `false` otherwise.
]=]
local function isCallable<T>(value: T): boolean
	return type(value) == "function"
		or (type(value) == "table" and getmetatable(value) and getmetatable(value).__call ~= nil)
		or false
end

return isCallable
