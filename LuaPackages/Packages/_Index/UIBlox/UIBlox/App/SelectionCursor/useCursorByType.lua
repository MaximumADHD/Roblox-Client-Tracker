--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent

local React = require(Packages.React)
local CursorContext = require(script.Parent.CursorContext)

local function useCursorByType(cursorType): React.Ref<GuiObject>
	local context = React.useContext(CursorContext)
	return context.getCursorByType(cursorType)
end

return useCursorByType
