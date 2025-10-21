local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local OverlayContext = require(script.Parent.OverlayContext)
local Flags = require(Foundation.Utility.Flags)

return function()
	local overlayContext = React.useContext(OverlayContext)

	if Flags.FoundationLazyOverlayLoading then
		React.useEffect(function()
			overlayContext.requestOverlay()
		end, {})
	end

	return overlayContext.instance
end
