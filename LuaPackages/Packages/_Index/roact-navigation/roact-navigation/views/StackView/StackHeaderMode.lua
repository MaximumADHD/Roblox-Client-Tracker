local NavigationSymbol = require(script.Parent.Parent.Parent.NavigationSymbol)

local FLOAT_SYMBOL = NavigationSymbol("FLOAT")
local SCREEN_SYMBOL = NavigationSymbol("SCREEN")
local NONE_SYMBOL = NavigationSymbol("NONE")

--[[
	StackHeaderMode determines the behavior of the header when screens
	are pushed/popped from the stack.
]]
return {
	None = NONE_SYMBOL, -- No header.
	Float = FLOAT_SYMBOL, -- Header that stays in place during transitions.
	Screen = SCREEN_SYMBOL, -- Header that sticks to each screen and transitions with it.
}
