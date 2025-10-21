--[=[
	A function which does nothing.

	Can be used to make it clear that a handler has no function.

	@return Always returns `nil`.
]=]
-- selene: allow(unused_variable)
local function noop(...: any) end

return noop
