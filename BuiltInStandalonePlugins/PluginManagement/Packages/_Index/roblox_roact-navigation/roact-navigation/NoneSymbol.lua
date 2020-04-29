local NavigationSymbol = require(script.Parent.NavigationSymbol)

--[[
	RoactNavigation.None allows us to declare that certain values should be explicitly
	removed from navigation props, e.g. for stack navigation options where we want to
	remove the default header from a screen when drawing in a stack navigator with
	headerMode == StackHeaderMode.Screen.
]]
local NONE_SYMBOL = NavigationSymbol("NONE")

return NONE_SYMBOL
