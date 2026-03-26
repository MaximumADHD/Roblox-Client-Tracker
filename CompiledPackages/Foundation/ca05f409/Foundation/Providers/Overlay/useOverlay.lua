local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local OverlayContext = require(script.Parent.OverlayContext)

local function useOverlay(): GuiBase2d?
	local overlayContext = React.useContext(OverlayContext)

	React.useLayoutEffect(function()
		overlayContext.requestOverlay()
	end, {})

	return overlayContext.instance
end

return useOverlay
