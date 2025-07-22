--!nonstrict
--[[
	A hook used to obtain the selection cursor of the given type.
]]

local SelectionImageRoot = script.Parent
local Packages = SelectionImageRoot.Parent.Parent.Parent
local UIBlox = script.Parent.Parent.Parent

local SelectionImageContext = require(SelectionImageRoot.SelectionImageContext)
local React = require(Packages.React)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Foundation = require(Packages.Foundation)
local useFoundationCursor = Foundation.Hooks.useCursor
local mapCursorType = require(UIBlox.App.SelectionCursor.mapCursorType)

local function useSelectionCursor(cursorKind)
	if UIBloxConfig.useFoundationSelectionCursor then
		return useFoundationCursor(mapCursorType(cursorKind, true))
	end
	local getSelectionCursor = React.useContext(SelectionImageContext)
	return getSelectionCursor(cursorKind)
end

return useSelectionCursor
