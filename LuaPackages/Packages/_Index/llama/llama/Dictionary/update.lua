
local copy = require(script.Parent.copy)

local function noUpdate(v, k)
	return v, k
end

local function call(callback, ...)
	if type(callback) == "function" then
		return callback(...)
	end
end

local function update(dictionary, key, updater, callback)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)

	assert(key ~= nil, "expected second argument to be anything but nil, got nil")

	local new = copy(dictionary)
	local v, k

	updater = updater or noUpdate

	if new[key] ~= nil then
		v, k = updater(new[key], key)
		call(callback, true, v, k or key)
	else
		v, k = call(callback, false, key)
	end
	
	new[k or key] = v

	return new
end

return update