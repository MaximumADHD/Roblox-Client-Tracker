--[[
	A hook used to obtain the FocusController in a RoactGamepad focus tree.
]]

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)

local function useFocusController()
	local navContext = React.useContext(RoactGamepad.FocusContext)
	if navContext then
		return navContext.focusNode.focusController
	else
		return nil
	end
end

return useFocusController
