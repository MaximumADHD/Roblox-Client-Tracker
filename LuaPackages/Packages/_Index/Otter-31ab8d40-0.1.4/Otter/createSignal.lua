local function addToMap(map, addKey, addValue)
	local new = {}

	for key, value in pairs(map) do
		new[key] = value
	end

	new[addKey] = addValue

	return new
end

local function removeFromMap(map, removeKey)
	local new = {}

	for key, value in pairs(map) do
		if key ~= removeKey then
			new[key] = value
		end
	end

	return new
end

local function createSignal()
	local connections = {}

	local function subscribe(_self, callback)
		assert(typeof(callback) == "function", "Can only subscribe to signals with a function.")

		local connection = {
			callback = callback,
		}

		connections = addToMap(connections, callback, connection)

		local function disconnect()
			assert(not connection.disconnected, "Listeners can only be disconnected once.")

			connection.disconnected = true
			connections = removeFromMap(connections, callback)
		end

		return disconnect
	end

	local function fire(_self, ...)
		for callback, connection in pairs(connections) do
			if not connection.disconnected then
				callback(...)
			end
		end
	end

	return {
		subscribe = subscribe,
		fire = fire,
	}
end

return createSignal
