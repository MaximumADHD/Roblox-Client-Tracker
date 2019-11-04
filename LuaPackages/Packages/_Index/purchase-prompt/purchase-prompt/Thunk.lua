--[[
	An upgraded version of Rodux's thunk middleware that describes a table
	format for thunks. This allows them to be named (via the `type` field)
	and gives us cleaner methods for dependency injection via providing
	services to our middleware that can be threaded into any thunks that
	might request them
]]
local Symbol = require(script.Parent.Symbol)

local Thunk = {}

local ThunkTag = Symbol.named("ThunkTag")

function Thunk.middleware(services)
	services = services or {}

	return function(nextDispatch, store)
		--[[
			This middleware doesn't need to do anything during initialization
			so we go straight to returning the wrapped dispatch function
		]]
		return function(action)
			if action[ThunkTag] == true then
				local injectedServices = {}

				for _, service in pairs(action.requiredServices) do
					local providedService = services[service]

					if providedService == nil then
						error((
							"Service with key %s is a dependency but was not provided"
						):format(service))
					end

					injectedServices[service] = providedService
				end

				--[[
					By convention, we return the result of our thunk operation.
					This value is not guaranteed to have any particular form or
					meaning, but it prevents our middleware from conditionally returning,
					which is a dangerous pattern in Lua.
				]]
				return action(store, injectedServices)
			else
				return nextDispatch(action)
			end
		end
	end
end

function Thunk.new(name, requiredServices, onInvoke)
	assert(typeof(name) == "string", "Bad arg #1: name must be a string")
	assert(requiredServices == nil or typeof(requiredServices) == "table",
		"Bad arg #2: requiredServices must be a table or nil")
	assert(typeof(onInvoke) == "function", "Bad arg #3: onInvoke must be a function")

	requiredServices = requiredServices or {}

	return setmetatable({
		[ThunkTag] = true,
		type = name,
		requiredServices = requiredServices,
	}, {
		__call = function(self, ...)
			onInvoke(...)
		end,
	})
end

function Thunk.test(thunk, store, providedServices)
	assert(typeof(thunk) == "table" and thunk[ThunkTag] == true,
		"Test Error - Bad arg #1: Must provide a valid thunk")

	if #thunk.requiredServices > 0 then
		for _, service in ipairs(thunk.requiredServices) do
			assert(providedServices[service] ~= nil,
				"Test Error - Bad arg #3: Missing required service "..tostring(service))
		end
	end

	return thunk(store, providedServices)
end

return Thunk