local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local OverlayContext = require(script.Parent.OverlayContext)

return function()
	return React.useContext(OverlayContext).instance
end
