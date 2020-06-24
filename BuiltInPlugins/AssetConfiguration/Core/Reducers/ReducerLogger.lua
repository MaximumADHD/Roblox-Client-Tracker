local maxTableLength = 15

local function getTableLength(t)
	if type(t) ~= "table" then
		return 0
	end
	local l = 0
	for _ in pairs(t) do
		l = l + 1
	end
	return l
end

-- These keys shouldn't be listed in full, just their length
local blacklistKeys = {
	categories = true,
	sorts = true,
}

local function objectToString(name, obj, indent)
	indent = indent or 0
	local tabs = ("\t"):rep(indent)

	local key = tostring(name)
	local value = tostring(obj)

	if type(name) ~= "string" then
		key = ("[%s]"):format(key)
	end

	if type(obj) == "string" then
		value = ("\"%s\""):format(value)
	elseif type(obj) == "table" then
		local length = getTableLength(obj)
		if length > maxTableLength or blacklistKeys[name] then
			value = ("%s (length = %d)"):format(value, length)
		else
			value = "{"
			for k, v in pairs(obj) do
				value = value .. ("\n%s"):format(objectToString(k, v, indent + 1))
			end
			value = value .. ((length > 0) and ("\n%s"):format(tabs) or " ") .. "}"
		end
	end

	return (("%s%s\t = %s"):format(tabs, key, value))
end

return function(reducer, state, action)
	local actionTypeString = action.type and tostring(action.type) or "(action.type == nil)"
	local between = ("-"):rep(40)

	print(between)
	print(("Handling action %s"):format(actionTypeString))
	if action.type == "@@INIT" then
		print(objectToString("State", state, 1))
	end

	print(objectToString(("Action %s"):format(actionTypeString), action, 1))

	local newState = reducer(state, action)

	print(objectToString("New state", newState, 1))

	print(between)
	return newState
end
