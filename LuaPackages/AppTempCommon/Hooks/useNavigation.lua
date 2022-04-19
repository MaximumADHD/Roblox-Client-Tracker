--[[
	A hook used to consume the RoactNavigation context.
]]

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local RoactNavigation = require(CorePackages.RoactNavigation)

local function useNavigation()
	return React.useContext(RoactNavigation.Context)
end

return useNavigation
