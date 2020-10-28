-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/routers/StackActions.js

local root = script.Parent.Parent
local Packages = root.Parent
local Cryo = require(Packages.Cryo)
local NavigationSymbol = require(root.NavigationSymbol)

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

-- deviation: we using this metatable to error when StackActions is indexed
-- with an unexpected key.
setmetatable(StackActions, {
	__index = function(self, key)
		error(("%q is not a valid member of StackActions"):format(tostring(key)), 2)
	end,
})

-- Pop the top-most item off the route stack, if any.
function StackActions.pop(payload)
	return Cryo.Dictionary.join({ type = POP_TOKEN }, payload or {})
end

-- Pop all the items except the last one off the route stack.
function StackActions.popToTop(payload)
	return Cryo.Dictionary.join({ type = POP_TO_TOP_TOKEN }, payload or {})
end

-- Push a new item onto the route stack.
function StackActions.push(payload)
	return Cryo.Dictionary.join({ type = PUSH_TOKEN }, payload or {})
end

-- Reset the route stack and replace it with a new stack,
-- specified by a list of actions to be applied.
function StackActions.reset(payload)
	return Cryo.Dictionary.join({ type = RESET_TOKEN }, payload or {})
end

-- Replace the route for the given key with a new route.
function StackActions.replace(payload)
	return Cryo.Dictionary.join(
		{ type = REPLACE_TOKEN, preserveFocus = true },
		payload or {}
	)
end

function StackActions.completeTransition(payload)
	return Cryo.Dictionary.join(
		{ type = COMPLETE_TRANSITION_TOKEN, preserveFocus = true },
		payload or {}
	)
end

return StackActions
