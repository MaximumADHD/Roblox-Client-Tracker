--[[
	Provides an implementation of functional programming primitives.
]]

local Functional = {}

--[[
	Create a copy of a list with only values for which `callback` returns true
]]
function Functional.Filter(list, callback)
	local new = {}

	for key = 1, #list do
		local value = list[key]
		if callback(value, key) then
			table.insert(new, value)
		end
	end

	return new
end

--[[
	Create a copy of a list where each value is transformed by `callback`
]]
function Functional.Map(list, callback)
	local new = {}

	for key = 1, #list do
		new[key] = callback(list[key], key)
	end

	return new
end

function Functional.MapReverse(list, callback)
	local new = {}

	for key = #list, 1, -1 do
		new[key] = callback(list[key], key)
	end

	return new
end

--[[
	Create a copy of a list doing a combination filter and map.

	If callback returns nil for any item, it is considered filtered from the
	list. Any other value is considered the result of the 'map' operation.
]]
function Functional.FilterMap(list, callback)
	local new = {}

	for key = 1, #list do
		local value = list[key]
		local result = callback(value, key)

		if result ~= nil then
			table.insert(new, result)
		end
	end

	return new
end

--[[
	Performs a left-fold of the list with the given initial value and callback.
]]
function Functional.Fold(list, initial, callback)
	local accum = initial

	for key = 1, #list do
		accum = callback(accum, list[key], key)
	end

	return accum
end

--[[
	Performs a fold over the entries in the given dictionary.
]]
function Functional.FoldDictionary(dictionary, initial, callback)
	local accum = initial

	for key, value in pairs(dictionary) do
		accum = callback(accum, key, value)
	end

	return accum
end

--[[
	Returns a list that contains at most `count` values from the given list.
]]
function Functional.Take(list, count)
	if count >= #list then
		return list
	end

	local new = {}

	for i = 1, count do
		local value = list[i]
		new[i] = value
	end

	return new
end

--[[
	If the list contains the sought-after element, return it's index, or nil otherwise.
]]
function Functional.Find(list, value)
	for index,element in pairs(list) do
		if element == value then
			return index
		end
	end
	return nil
end

return Functional