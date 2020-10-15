local NavigationSymbol = require(script.Parent.NavigationSymbol)

local POP_TOKEN = NavigationSymbol("POP")
local POP_TO_TOP_TOKEN = NavigationSymbol("POP_TO_TOP")
local PUSH_TOKEN = NavigationSymbol("PUSH")
local RESET_TOKEN = NavigationSymbol("RESET")
local REPLACE_TOKEN = NavigationSymbol("REPLACE")

--[[
	StackActions provides shared constants and methods to construct
	actions that are dispatched to routers to cause a change in the route.
	These actions are specific to Stack navigation. See NavigationActions
	if you need to use more general APIs.
]]
local StackActions = {
	Pop = POP_TOKEN,
	PopToTop = POP_TO_TOP_TOKEN,
	Push = PUSH_TOKEN,
	Reset = RESET_TOKEN,
	Replace = REPLACE_TOKEN,
}

StackActions.__index = StackActions

-- Pop the top-most item off the route stack, if any.
function StackActions.pop(payload)
	local data = payload or {}
	return {
		type = POP_TOKEN,
		n = data.n,
	}
end

-- Pop all the items except the last one off the route stack.
function StackActions.popToTop(payload)
	local data = payload or {}
	return {
		type = POP_TO_TOP_TOKEN,
		key = data.key,
	}
end

-- Push a new item onto the route stack.
function StackActions.push(payload)
	local data = payload or {}
	return {
		type = PUSH_TOKEN,
		routeName = data.routeName,
		params = data.params,
		action = data.action,
	}
end

-- Reset the route stack and replace it with a new stack,
-- specified by a list of actions to be applied.
function StackActions.reset(payload)
	local data = payload or {}
	return {
		type = RESET_TOKEN,
		index = data.index,
		actions = data.actions,
		key = data.key,
	}
end

-- Replace the route for the given key with a new route.
function StackActions.replace(payload)
	local data = payload or {}
	return {
		type = REPLACE_TOKEN,
		key = data.key,
		newKey = data.newKey,
		routeName = data.routeName,
		params = data.params,
		action = data.action,
		immediate = data.immediate,
	}
end

return StackActions
