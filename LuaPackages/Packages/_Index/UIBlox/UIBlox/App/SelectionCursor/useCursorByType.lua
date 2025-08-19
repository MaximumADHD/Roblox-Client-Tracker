--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent
local Foundation = require(Packages.Foundation)
local useFoundationCursor = Foundation.Hooks.useCursor
local React = require(Packages.React)
local mapCursorType = require(script.Parent.mapCursorType)

local function useCursorByType(cursorType): React.Ref<GuiObject>
	return useFoundationCursor(mapCursorType(cursorType))
end

return useCursorByType
