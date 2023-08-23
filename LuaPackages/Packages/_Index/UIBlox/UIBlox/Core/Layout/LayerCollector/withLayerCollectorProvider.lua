local LayerCollector = script.Parent
local UIBlox = LayerCollector.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local LayerCollectorContext = require(script.Parent.LayerCollectorContext)

local function LayerCollectorConsumer(renderWithLayerCollector)
	return Roact.createElement(LayerCollectorContext.Consumer, {
		render = renderWithLayerCollector,
	})
end

return LayerCollectorConsumer
