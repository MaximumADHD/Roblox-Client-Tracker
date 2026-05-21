local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local OverlayContext = require(script.Parent.OverlayContext)

local Flags = require(Foundation.Utility.Flags)

local function useOverlay(): GuiBase2d?
	local overlayContext = React.useContext(OverlayContext)

	React.useLayoutEffect(function()
		overlayContext.requestOverlay()
	end, if Flags.FoundationOverlayKeyboardAwarenessHardened then { overlayContext.requestOverlay } else {})

	return overlayContext.instance
end

return useOverlay
