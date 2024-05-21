local root = script.Parent.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local NavigationSymbol = require(script.Parent.Parent.NavigationSymbol)

local JUMP_TO_TOKEN = NavigationSymbol("JUMP_TO")

local SwitchActions = {
	JumpTo = JUMP_TO_TOKEN,
}

-- deviation: we using this metatable to error when SwitchActions is indexed
-- with an unexpected key.
setmetatable(SwitchActions, {
	__index = function(_self, key)
		error(("%q is not a valid member of SwitchActions"):format(tostring(key)), 2)
	end,
})

-- Pop the top-most item off the route stack, if any.
function SwitchActions.jumpTo(payload)
	local _ref = { type = JUMP_TO_TOKEN, preserveFocus = true }
	return if payload then Object.assign(_ref, payload) else _ref
end

return SwitchActions
