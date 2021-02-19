
local copy = require(script.Parent.copy)

local function noUpdate(value)
	return value
end

local function call(callback, ...)
	if type(callback) == "function" then
		return callback(...)
	end
end

local function update(list, index, updater, callback)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local indexType = type(index)
	assert(indexType == "number" and index % 1 == 0, "expected an integer for second argument, got " .. indexType)

	local new = copy(list)
	local value

	updater = updater or noUpdate

	if new[index] ~= nil then
		value = updater(new[index], index)
		call(callback, true, value, index)
	else
		value = call(callback, false, index)
	end
	
	new[index] = value

	return new
end

return update