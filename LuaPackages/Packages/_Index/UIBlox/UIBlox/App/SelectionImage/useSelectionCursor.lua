--!nonstrict
--[[
	A hook used to obtain the selection cursor of the given type.
]]

local SelectionImageRoot = script.Parent
local Packages = SelectionImageRoot.Parent.Parent.Parent
local UIBlox = script.Parent.Parent.Parent

local Foundation = require(Packages.Foundation)
local useFoundationCursor = Foundation.Hooks.useCursor
local mapCursorType = require(UIBlox.App.SelectionCursor.mapCursorType)

local function useSelectionCursor(cursorKind)
	return useFoundationCursor(mapCursorType(cursorKind, true))
end

return useSelectionCursor
