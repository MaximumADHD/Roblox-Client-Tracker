local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local LayerCollectorContext = require(script.Parent.LayerCollectorContext)

return function()
	local layerCollectorContext = React.useContext(LayerCollectorContext)
	return layerCollectorContext
end
