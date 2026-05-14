--!strict
--[[
	A middleware that allows for functions to be dispatched.
	Functions will receive a single argument, the store itself.
	This middleware consumes the function; middleware further down the chain
	will not receive it.
]]
local makeThunkMiddleware = require(script.Parent.makeThunkMiddleware)

return makeThunkMiddleware(nil) -- no extra argument
