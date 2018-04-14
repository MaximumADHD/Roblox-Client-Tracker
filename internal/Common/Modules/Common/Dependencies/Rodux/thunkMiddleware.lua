--[[
	A middleware that allows for functions to be dispatched.
	Functions will receive a single argument, the store itself.
	This middleware consumes the function; middleware further down the chain
	will not receive it.
]]
local function thunkMiddleware(next)
	return function(store, action)
		if typeof(action) == "function" then
			return action(store)
		else
			return next(store, action)
		end
	end
end

return thunkMiddleware
