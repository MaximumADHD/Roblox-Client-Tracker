--[[
	A hook used to consume the RoactNavigation routeName for the screen this
	component belongs to.
]]
local CorePackages = game:GetService("CorePackages")
local useNavigation = require(CorePackages.AppTempCommon.Hooks.useNavigation)

local function useRouteName()
	local navigation = useNavigation()
	return navigation.state.routeName
end

return useRouteName
