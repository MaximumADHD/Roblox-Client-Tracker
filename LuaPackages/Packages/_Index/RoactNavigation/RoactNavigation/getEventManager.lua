-- upstream https://github.com/react-navigation/react-navigation/blob/9b55493e7662f4d54c21f75e53eb3911675f61bc/packages/core/src/getEventManager.js

local root = script.Parent
local Packages = root.Parent
local Cryo = require(Packages.Cryo)

local function getEventManager(target)
	local listeners = {}

	local function removeListener(type_, callback)
		local callbacks = listeners[type_] and listeners[type_][target]

		if not callbacks then
			return
		end

		local index = table.find(callbacks, callback)
		table.remove(callbacks, index)
	end

	local function addListener(type_, callback)
		listeners[type_] = listeners[type_] or {}
		listeners[type_][target] = listeners[type_][target] or {}

		table.insert(listeners[type_][target], callback)

		return {
			remove = function()
				removeListener(type_, callback)
			end,
		}
	end

	return {
		addListener = addListener,
		emit = function(type_, data)
			local items = listeners[type_] or {}
			local callbacks = items[target] and Cryo.List.join({}, items[target])

			if callbacks then
				for _, callback in ipairs(callbacks) do
					callback(data)
				end
			end
		end,
	}
end

return getEventManager
