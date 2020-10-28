local Cryo = require(script.Parent.Parent.Parent.Cryo)
local NavigationSymbol = require(script.Parent.Parent.NavigationSymbol)

local JUMP_TO_TOKEN = NavigationSymbol("JUMP_TO")

local SwitchActions = {
	JumpTo = JUMP_TO_TOKEN,
}

-- deviation: we using this metatable to error when SwitchActions is indexed
-- with an unexpected key.
setmetatable(SwitchActions, {
	__index = function(self, key)
		error(("%q is not a valid member of SwitchActions"):format(tostring(key)), 2)
	end,
})

-- Pop the top-most item off the route stack, if any.
function SwitchActions.jumpTo(payload)
	return Cryo.Dictionary.join(
		{ type = JUMP_TO_TOKEN, preserveFocus = true },
		payload or {}
	)
end

return SwitchActions
