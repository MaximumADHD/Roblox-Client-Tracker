--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent

local React = require(Packages.React)
local CursorContext = require(script.Parent.CursorContext)

local function useCursor(radius: UDim?, offset: number?, borderWidth: number?): React.Ref<GuiObject>
	local context = React.useContext(CursorContext)
	return context.getCursor(radius, offset, borderWidth)
end

return useCursor
