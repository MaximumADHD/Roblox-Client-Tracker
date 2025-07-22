--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent
local UIBlox = script.Parent.Parent.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local React = require(Packages.React)
local CursorContext = require(script.Parent.CursorContext)
local Foundation = require(Packages.Foundation)
local useFoundationCursor = Foundation.Hooks.useCursor

local function useCursor(radius: UDim?, offset: number?, borderWidth: number?): React.Ref<GuiObject>
	if UIBloxConfig.useFoundationSelectionCursor then
		return useFoundationCursor({
			radius = radius,
			offset = offset,
			borderWidth = borderWidth,
		})
	else
		local context = React.useContext(CursorContext)
		return context.getCursor(radius, offset, borderWidth)
	end
end

return useCursor
