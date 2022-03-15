--[[
	Returns `true` if the value can be called i.e. you can write `value(...)`.

	This is a drop-in replacement for `t.callable` that works with mock function
	objects like the one returned by `jest.fn()`.

	(NOTE: This is a direct copy of Dash.isCallable)
]]
local function isCallable(value: any): boolean
	return type(value) == "function"
		or (type(value) == "table" and getmetatable(value) and getmetatable(value).__call ~= nil)
		or false
end

return isCallable
