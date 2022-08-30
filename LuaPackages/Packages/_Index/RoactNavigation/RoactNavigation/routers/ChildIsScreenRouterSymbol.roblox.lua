local RoactNavigationModule = script.Parent.Parent

local NavigationSymbol = require(RoactNavigationModule.NavigationSymbol)

-- This symbol is used to differentiate if a router has a child router
-- or if is a regular Roact component. React-navigation does it by using
-- undefined vs. null (that's why we need)
return NavigationSymbol("CHILD_IS_SCREEN_ROUTER")
