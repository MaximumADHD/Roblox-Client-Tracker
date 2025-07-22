--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent
local UIBlox = script.Parent.Parent.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Foundation = require(Packages.Foundation)
local useFoundationCursor = Foundation.Hooks.useCursor
local React = require(Packages.React)
local CursorContext = require(script.Parent.CursorContext)
local mapCursorType = require(script.Parent.mapCursorType)

local function useCursorByType(cursorType): React.Ref<GuiObject>
	local context = React.useContext(CursorContext)
	if UIBloxConfig.useFoundationSelectionCursor then
		return useFoundationCursor(mapCursorType(cursorType))
	else
		return context.getCursorByType(cursorType)
	end
end

return useCursorByType
