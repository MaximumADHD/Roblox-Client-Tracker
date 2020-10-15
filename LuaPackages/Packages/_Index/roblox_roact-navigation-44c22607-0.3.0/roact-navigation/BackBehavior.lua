local NavigationSymbol = require(script.Parent.NavigationSymbol)

local NONE_TOKEN = NavigationSymbol("NONE")
local INITIAL_ROUTE_TOKEN = NavigationSymbol("INITIAL_ROUTE")
local ORDER_TOKEN = NavigationSymbol("ORDER")
local HISTORY_TOKEN = NavigationSymbol("HISTORY")

--[[
	BackBehavior provides shared constants that are used to configure back
	action styles for different navigators. Note that not all routers support
	all BackBehaviors and they will fall back to appropriate defaults for
	those cases.
]]
local BackBehavior = {
	None = NONE_TOKEN,
	InitialRoute = INITIAL_ROUTE_TOKEN,
	Order = ORDER_TOKEN,
	History = HISTORY_TOKEN,
}

-- we are using this metatable to error when BackBehavior is indexed
-- with an unexpected key.
setmetatable(BackBehavior, {
	__index = function(self, key)
		error(("%q is not a valid member of BackBehavior"):format(tostring(key)), 2)
	end,
})

return BackBehavior
