local Dash = script.Parent
local None = require(Dash.None)
local forEachArgs = require(Dash.forEachArgs)
local forEach = require(Dash.forEach)
local insert = table.insert

--[=[
	Adds new elements to the _target_ array from subsequent array arguments in left-to-right order.

	Arguments which are `nil` or `Dash.None` are skipped.

	@param target The array to append to.
	@param ... One or more arrays of items to append.
	@return The mutated _target_ array.
]=]
local function append<T>(target: { T }, ...: { T }?): { T }
	forEachArgs(function(list: { T }?)
		if list == None or list == nil then
			return
		else
			forEach(list, function(value: T)
				insert(target, value)
			end)
		end
	end, ...)
	return target
end

return append
