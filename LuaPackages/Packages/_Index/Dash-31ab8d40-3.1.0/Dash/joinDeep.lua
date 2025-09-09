local Dash = script.Parent
local None = require(Dash.None)
local Types = require(Dash.Types)
local forEach = require(Dash.forEach)

-- TODO Luau: Support typing varargs
-- TODO Luau: Support function generics
--[=[
	Creates a shallow clone of the _source_ map, and copies the values from the _delta_ map by key, like the join utility.

	However, if any of the values are tables themselves, the joinDeep function is called recursively to produce a new table at the specified key.

	The purpose of this function is to merge nested immutable data using as few table creation operations as possible, making it appropriate for updating state in a reducer.

	The None symbol can be used to remove an existing value.

	@param source The source table to clone and merge into.
	@param delta The delta table containing changes to apply.
	@return A new table with deep-merged values from source and delta.
]=]
local function joinDeep(source: {}, delta: {}): Types.Table
	local result = table.clone(source)
	-- Iterate through each key of the input and assign to target at the same key
	forEach(delta, function(value, key)
		if typeof(source[key]) == "table" and typeof(value) == "table" then
			-- Only merge tables
			result[key] = joinDeep(source[key], value)
		elseif value == None then
			-- Remove none values
			result[key] = nil
		else
			result[key] = value
		end
	end)
	return result
end

return joinDeep
