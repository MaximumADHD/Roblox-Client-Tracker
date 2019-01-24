local NavigationSymbol = require(script.Parent.NavigationSymbol)

local POP_TOKEN = NavigationSymbol("POP")
local POP_TO_TOP_TOKEN = NavigationSymbol("POP_TO_TOP")
local PUSH_TOKEN = NavigationSymbol("PUSH")
local RESET_TOKEN = NavigationSymbol("RESET")
local REPLACE_TOKEN = NavigationSymbol("REPLACE")
local COMPLETE_TRANSITION_TOKEN = NavigationSymbol("COMPLETE_TRANSITION")

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
	CompleteTransition = COMPLETE_TRANSITION_TOKEN,
}

StackActions.__index = StackActions

-- Pop the top-most item off the route stack, if any.
function StackActions.pop(payload)
	return {
		type = POP_TOKEN,
		n = payload.n,
	}
end

-- Pop all the items except the last one off the route stack.
function StackActions.popToTop()
	return {
		type = POP_TO_TOP_TOKEN,
	}
end

-- Push a new item onto the route stack.
function StackActions.push(payload)
	return {
		type = PUSH_TOKEN,
		routeName = payload.routeName,
		params = payload.params,
		action = payload.action,
	}
end

-- Reset the route stack and replace it with a new stack,
-- specified by a list of actions to be applied.
function StackActions.reset(payload)
	return {
		type = RESET_TOKEN,
		index = payload.index,
		actions = payload.actions,
		key = payload.key,
	}
end

-- Replace the route for the given key with a new route.
function StackActions.replace(payload)
	return {
		type = REPLACE_TOKEN,
		key = payload.key,
		newKey = payload.newKey,
		routeName = payload.routeName,
		params = payload.params,
		action = payload.action,
		immediate = payload.immediate,
	}
end

-- For internal use. Triggers completion of a transition animation, if needed by the router.
-- This would be sent on e.g. didMount of  the new page, so the router knows that the new screen
-- is ready to be displayed before it animates it in place.
function StackActions.completeTransition(payload)
	return {
		type = COMPLETE_TRANSITION_TOKEN,
		key = payload.key,
		toChildKey = payload.toChildKey,
	}
end

return StackActions
