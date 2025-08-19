--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent
local React = require(Packages.React)
local Foundation = require(Packages.Foundation)
local useFoundationCursor = Foundation.Hooks.useCursor

local function useCursor(radius: UDim?, offset: number?, borderWidth: number?): React.Ref<GuiObject>
	return useFoundationCursor({
		radius = radius,
		offset = offset,
		borderWidth = borderWidth,
	})
end

return useCursor
