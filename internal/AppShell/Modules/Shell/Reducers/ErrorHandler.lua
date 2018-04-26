local Modules = game:GetService("CoreGui").RobloxGui.Modules
local OrderedMap = require(Modules.Shell.OrderedMap)
local DeleteError = require(Modules.Shell.Actions.DeleteError)

local function getErrorCode(error)
	return error.Code
end

local function errorSortPredicate(error1, error2)
	return error1.timestamp < error2.timestamp
end

return function(state, action)
	state = state or OrderedMap.new(getErrorCode, errorSortPredicate)

	--OrderedMap.Delete and OrderedMap.Insert are immutable operations and a new table is returned.
	if action.error and type(getErrorCode(action.error)) == "number" then
		if action.type == DeleteError.name then
			state = OrderedMap.Delete(state, getErrorCode(action.error))
		else
			state = OrderedMap.Insert(state, action.error)
		end
	end

	return state
end