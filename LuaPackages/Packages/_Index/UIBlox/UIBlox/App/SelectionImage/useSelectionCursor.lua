--!nonstrict
--[[
	A hook used to obtain the selection cursor of the given type.
]]

local SelectionImageRoot = script.Parent
local Packages = SelectionImageRoot.Parent.Parent.Parent

local SelectionImageContext = require(SelectionImageRoot.SelectionImageContext)
local React = require(Packages.React)

local function useSelectionCursor(cursorKind)
	local getSelectionCursor = React.useContext(SelectionImageContext)
	return getSelectionCursor(cursorKind)
end

return useSelectionCursor
