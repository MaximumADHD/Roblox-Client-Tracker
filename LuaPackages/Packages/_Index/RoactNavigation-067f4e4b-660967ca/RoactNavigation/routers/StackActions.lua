-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/routers/StackActions.js

local root = script.Parent.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
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
	__index = function(_self, key)
		error(("%q is not a valid member of StackActions"):format(tostring(key)), 2)
	end,
})

-- Pop the top-most item off the route stack, if any.
function StackActions.pop(payload)
	local _ref = { type = POP_TOKEN }
	return if payload then Object.assign(_ref, payload) else _ref
end

-- Pop all the items except the last one off the route stack.
function StackActions.popToTop(payload)
	local _ref = { type = POP_TO_TOP_TOKEN }
	return if payload then Object.assign(_ref, payload) else _ref
end

-- Push a new item onto the route stack.
function StackActions.push(payload)
	local _ref = { type = PUSH_TOKEN }
	return if payload then Object.assign(_ref, payload) else _ref
end

-- Reset the route stack and replace it with a new stack,
-- specified by a list of actions to be applied.
function StackActions.reset(payload)
	local _ref = { type = RESET_TOKEN }
	return if payload then Object.assign(_ref, payload) else _ref
end

-- Replace the route for the given key with a new route.
function StackActions.replace(payload)
	local _ref = { type = REPLACE_TOKEN, preserveFocus = true }
	return if payload then Object.assign(_ref, payload) else _ref
end

function StackActions.completeTransition(payload)
	local _ref = { type = COMPLETE_TRANSITION_TOKEN, preserveFocus = true }
	return if payload then Object.assign(_ref, payload) else _ref
end

return StackActions
