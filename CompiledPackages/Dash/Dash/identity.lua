--[[
	The identity function, which simply returns its input parameters.

	Can be used to make it clear that a handler returns its inputs.
]]
local function identity<T...>(...: T...): T...
	return ...
end

return identity
