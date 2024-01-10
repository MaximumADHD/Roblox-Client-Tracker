local LuauPolyfill = script.Parent.Parent
local Set = require(LuauPolyfill.Set)
local instanceOf = require(LuauPolyfill.instanceof)
type Table = { [any]: any }
type Array<T> = { [number]: T }

return function(value: Table | string): Array<string>
	if value == nil then
		error("cannot extract keys from a nil value")
	end

	local valueType = typeof(value)

	local keys = {}
	if valueType == "table" then
		if instanceOf(value, Set) then
			return keys
		end

		for key in pairs(value :: Table) do
			table.insert(keys, key)
		end
	elseif valueType == "string" then
		local length = (value :: string):len()
		keys = table.create(length)
		for i = 1, length do
			keys[i] = tostring(i)
		end
	end

	return keys
end
