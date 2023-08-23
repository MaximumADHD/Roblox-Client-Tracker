local LayerCollector = script.Parent
local UIBlox = LayerCollector.Parent.Parent.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local LayerCollectorContext = require(script.Parent.LayerCollectorContext)

return function()
	local layerCollectorContext = React.useContext(LayerCollectorContext)
	return layerCollectorContext
end
