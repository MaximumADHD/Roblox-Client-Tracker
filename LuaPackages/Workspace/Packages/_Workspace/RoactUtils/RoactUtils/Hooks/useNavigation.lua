--[[
	A hook used to consume the RoactNavigation context.
]]

local RoactUtils = script:FindFirstAncestor("RoactUtils")
local Packages = RoactUtils.Parent

local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)

local function useNavigation()
	return React.useContext(RoactNavigation.Context)
end

return useNavigation
