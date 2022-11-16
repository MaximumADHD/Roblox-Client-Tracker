--[[
	A hook used to consume the RoactNavigation routeName for the screen this
	component belongs to.
]]

local useNavigation = require(script.Parent.useNavigation)

local function useRouteName()
	local navigation = useNavigation()
	return navigation.state.routeName
end

return useRouteName
