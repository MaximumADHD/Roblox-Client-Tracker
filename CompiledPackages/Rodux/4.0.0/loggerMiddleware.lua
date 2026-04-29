--!strict
-- We want to be able to override outputFunction in tests, so the shape of this
-- module is kind of unconventional.
--
-- We fix it this weird shape in init.lua.
type OutputFunction = (...any) -> ()

local prettyPrint = require(script.Parent.prettyPrint)
local loggerMiddleware = {
	outputFunction = (print :: any) :: OutputFunction,
}

function loggerMiddleware.middleware(nextDispatch, store)
	return function(action)
		local result = nextDispatch(action)

		loggerMiddleware.outputFunction(
			("Action dispatched: %s\nState changed to: %s"):format(prettyPrint(action), prettyPrint(store:getState()))
		)

		return result
	end
end

return loggerMiddleware
