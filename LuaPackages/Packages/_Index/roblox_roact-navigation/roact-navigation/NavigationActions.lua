-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/NavigationActions.ts

local NavigationSymbol = require(script.Parent.NavigationSymbol)

local BACK_TOKEN = NavigationSymbol("BACK")
local INIT_TOKEN = NavigationSymbol("INIT")
local NAVIGATE_TOKEN = NavigationSymbol("NAVIGATE")
local SET_PARAMS_TOKEN = NavigationSymbol("SET_PARAMS")

--[[
	NavigationActions provides shared constants and methods to construct
	actions that are dispatched to routers to cause a change in the route.
]]
local NavigationActions = {
	Back = BACK_TOKEN,
	Init = INIT_TOKEN,
	Navigate = NAVIGATE_TOKEN,
	SetParams = SET_PARAMS_TOKEN,
}

-- deviation: we using this metatable to error when NavigationActions is indexed
-- with an unexpected key.
setmetatable(NavigationActions, {
	__index = function(self, key)
		error(("%q is not a valid member of NavigationActions"):format(tostring(key)), 2)
	end,
})

-- Navigate back in the history (temporally).
function NavigationActions.back(payload)
	local data = payload or {}
	return {
		type = BACK_TOKEN,
		key = data.key,
		immediate = data.immediate,
	}
end

-- Initialize the navigation history if not already defined.
function NavigationActions.init(payload)
	local data = payload or {}
	return {
		type = INIT_TOKEN,
		params = data.params,
	}
end

-- Navigate to an existing or new route.
function NavigationActions.navigate(payload)
	local data = payload or {}
	return {
		type = NAVIGATE_TOKEN,
		routeName = data.routeName,
		params = data.params,
		action = data.action,
		key = data.key,
	}
end

-- Swap out the params for an existing route, matched by the given key.
function NavigationActions.setParams(payload)
	local data = payload or {}
	return {
		type = SET_PARAMS_TOKEN,
		preserveFocus = true,
		key = data.key,
		params = data.params,
	}
end

return NavigationActions
