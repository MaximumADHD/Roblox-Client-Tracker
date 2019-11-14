local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Symbol = require(Plugin.Src.Util.Symbol)

local TerrainBrushKey = Symbol.named("TerrainBrush")

local TerrainInterfaceProvider = Roact.PureComponent:extend("TerrainInterfaceProvider")

function TerrainInterfaceProvider:init()
	local terrainBrush = self.props.terrainBrush
	assert(terrainBrush, "TerrainInterfaceProvider expects a TerrainBrush")
	self._context[TerrainBrushKey] = terrainBrush

	-- TODO: Add more terrain interfaces (e.g. generation, import, sea level)
end

function TerrainInterfaceProvider:willUnmount()
	if self._context[TerrainBrushKey] then
		self._context[TerrainBrushKey]:destroy()
	end
end

function TerrainInterfaceProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

local function getTerrainBrush(component)
	return component._context[TerrainBrushKey]
end

return {
	Provider = TerrainInterfaceProvider,
	getTerrainBrush = getTerrainBrush,
}
