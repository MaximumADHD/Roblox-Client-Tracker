--[[
	A helper function to define a named Rodux action creator.

	Takes a name followed by a list of fields that should be
	provided to the resulting action creator.

	Returns an object with a name field that can also be called
	to create an action. When called, it will validate its given
	arguments against the expected set of arguments.
]]
local function makeActionCreator(name, ...)
	local fields = {...}

	assert(type(name) == "string",
		"Bad argument #1 to makeActionCreator, expected string")

	for i = 1, select("#", ...) do
		assert(typeof(select(i, ...)) == "string",
			"Bad argument to makeActionCreator, all arguments must be of type string")
	end

	return setmetatable({
		name = name
	}, {
		__call = function(self, ...)
			local result = {
				type = name,
			}

			assert(select("#", ...) == #fields,
				"Incorrect number of arguments provided to action creator " .. name)

			for index, argName in ipairs(fields) do
				result[argName] = select(index, ...)
			end

			return result
		end
	})
end

return makeActionCreator