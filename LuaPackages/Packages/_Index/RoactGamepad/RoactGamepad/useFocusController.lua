--!strict
--[[
	A hook used to obtain the FocusController in a RoactGamepad focus tree.
]]
local Packages = script.Parent.Parent
local React = require(Packages.React)

local FocusContext = require(script.Parent.FocusContext)

local function useFocusController()
	local navContext = React.useContext(FocusContext)
	if navContext then
		return navContext.focusNode.focusController
	else
		return nil
	end
end

return useFocusController
