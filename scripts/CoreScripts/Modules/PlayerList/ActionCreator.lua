-- TODO: Use Rodux.createAction if that is ever added. See:
-- https://github.com/Roblox/rodux/issues/31
return function(name, fn)
	assert(type(name) == "string", "A name must be provided to create an Action")
	assert(type(fn) == "function", "A function must be provided to create an Action")

	return setmetatable({
		name = name,
	}, {
		__call = function(self, ...)
			local result = fn(...)

			assert(type(result) == "table", "An action must return a table")
			result.type = name

			return result
		end
	})
end