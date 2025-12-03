local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local OverlayContext = require(script.Parent.OverlayContext)

local function useOverlay(): GuiBase2d?
	local overlayContext = React.useContext(OverlayContext)
	local effectHook = (if Flags.FoundationOverlayMountReorder then React.useLayoutEffect else React.useEffect) :: any
	effectHook(function()
		overlayContext.requestOverlay()
	end, {})

	return overlayContext.instance
end

return useOverlay
