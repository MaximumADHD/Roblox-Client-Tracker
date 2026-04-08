-- Immutable is used for Signals to avoid invalidating the 'Fire' loop iteration.
local Immutable = {}

function Immutable.JoinDictionaries(...)
	local result = {}

	for i = 1, select("#", ...) do
		local dictionary = select(i, ...)

		for key, value in pairs(dictionary) do
			result[key] = value
		end
	end

	return result
end

function Immutable.JoinLists(...)
	local new = {}

	for listKey = 1, select("#", ...) do
		local list = select(listKey, ...)
		local len = #new

		for itemKey = 1, #list do
			new[len + itemKey] = list[itemKey]
		end
	end

	return new
end

function Immutable.Set(dictionary, key, value)
	local new = table.clone(dictionary)
	new[key] = value
	return new
end

function Immutable.Append(list, ...)
	local new = {}
	local len = #list

	for key = 1, len do
		new[key] = list[key]
	end

	for i = 1, select("#", ...) do
		new[len + i] = select(i, ...)
	end

	return new
end

function Immutable.RemoveFromDictionary(dictionary, ...)
	local result = {}

	for key, value in pairs(dictionary) do
		local found = false
		for listKey = 1, select("#", ...) do
			if key == select(listKey, ...) then
				found = true
				break
			end
		end
		if not found then
			result[key] = value
		end
	end

	return result
end

function Immutable.RemoveFromList(list, removeIndex)
	local new = {}

	for i = 1, #list do
		if i ~= removeIndex then
			table.insert(new, list[i])
		end
	end

	return new
end

function Immutable.RemoveRangeFromList(list, index, count)
	local new = {}

	for i = 1, #list do
		if i < index or i >= index + count then
			table.insert(new, list[i])
		end
	end

	return new
end

function Immutable.RemoveValueFromList(list, removeValue)
	local new = {}

	for i = 1, #list do
		if list[i] ~= removeValue then
			table.insert(new, list[i])
		end
	end

	return new
end

return Immutable
