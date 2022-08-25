--[[
	An upgraded version of Rodux's thunk middleware that describes a table
	format for thunks. This allows them to be named (via the `type` field)
	and gives us cleaner methods for dependency injection via providing
	services to our middleware that can be threaded into any thunks that
	might request them
]]
local CorePackages = game:GetService("CorePackages")
local Symbol = require(CorePackages.Symbol)

local InspectAndBuyThunk = {}

local ThunkTag = Symbol.named("ThunkTag")

function InspectAndBuyThunk.middleware(services)
	services = services or {}

	return function(nextDispatch, store)
		--[[
			This middleware doesn't need to do anything during initialization
			so we go straight to returning the wrapped dispatch function
		]]
		return function(action : (any, any) -> any)
			if (action :: any)[ThunkTag] == true then
				--[[
					By convention, we return the result of our thunk operation.
					This value is not guaranteed to have any particular form or
					meaning, but it prevents our middleware from conditionally returning,
					which is a dangerous pattern in Lua.
				]]
				return action(store, services)
			else
				return nextDispatch(action)
			end
		end
	end
end

function InspectAndBuyThunk.new(name, onInvoke)
	assert(typeof(name) == "string", "Bad arg #1: name must be a string")
	assert(typeof(onInvoke) == "function", "Bad arg #3: onInvoke must be a function")

	return setmetatable({
		[ThunkTag] = true,
		type = name,
	}, {
		__call = function(self, ...)
			onInvoke(...)
		end,
	})
end

function InspectAndBuyThunk.test(thunk : any, store, providedServices)
	assert(typeof(thunk) == "table" and thunk[ThunkTag] == true,
		"Test Error - Bad arg #1: Must provide a valid thunk")

	return thunk(store, providedServices)
end

return InspectAndBuyThunk