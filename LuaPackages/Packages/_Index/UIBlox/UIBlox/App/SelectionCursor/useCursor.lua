--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent

local React = require(Packages.React)
local CursorContext = require(script.Parent.CursorContext)

local function useCursor(radius: UDim?, inset: boolean?, offset: number?, borderWidth: number?): React.Ref<GuiObject>
	local context = React.useContext(CursorContext)
	return context.getCursor(radius, inset, offset, borderWidth)
end

return useCursor
